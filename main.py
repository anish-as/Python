from flask import Flask, render_template, request, redirect, url_for, session
import mysql.connector
import random

app = Flask(__name__)
app.secret_key = 'your_secret_key'

db_config = {
    'user': 'anish',
    'password': 'Success1@3',
    'host': 'localhost',
    'database': 'db_itil'
}

def get_random_questions():
    connection = mysql.connector.connect(**db_config)
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT id FROM new_questions")
    question_ids = [row['id'] for row in cursor.fetchall()]
    random.shuffle(question_ids)
    selected_ids = question_ids[:20]
    questions = []
    for qid in selected_ids:
        cursor.execute("SELECT * FROM new_questions WHERE id = %s", (qid,))
        questions.append(cursor.fetchone())
    cursor.close()
    connection.close()
    return questions

@app.route('/')
def index():
    session.clear()
    return render_template('index.html')

@app.route('/start', methods=['POST'])
def start_quiz():
    session['questions'] = get_random_questions()
    session['current_question'] = 0
    session['score'] = 0
    return redirect(url_for('question'))

@app.route('/question')
def question():
    current_question = session.get('current_question', 0)
    if current_question >= len(session['questions']):
        return redirect(url_for('result'))
    question = session['questions'][current_question]
    return render_template('question.html', question=question, current_question=current_question + 1)

@app.route('/answer', methods=['POST'])
def answer():
    selected_option = int(request.form['option'])
    current_question = session['current_question']
    correct_option = session['questions'][current_question]['correct_option']
    if selected_option == correct_option:
        session['score'] += 1
    session['current_question'] += 1
    return redirect(url_for('question'))

@app.route('/result')
def result():
    score = session.get('score', 0)
    return render_template('result.html', score=score)

if __name__ == '__main__':
    app.run(debug=True)
