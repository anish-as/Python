/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.43-log : Database - db_itil
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_itil` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_itil`;

/*Table structure for table `new_questions` */

DROP TABLE IF EXISTS `new_questions`;

CREATE TABLE `new_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `option1` text,
  `option2` text,
  `option3` text,
  `option4` text,
  `correct_option` int(11) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

/*Data for the table `new_questions` */

insert  into `new_questions`(`id`,`question`,`option1`,`option2`,`option3`,`option4`,`correct_option`,`enable`) values 
(1,'which facilitates outcomes that customers want to achieve?','Service','Warranty','Organization','IT asset',1,1),
(2,'What is the customer of a service responsible for?','Defining the requirements for the service ','Authorizing the budget for the service','Using the service','Provisioning the service \r\n',1,1),
(3,'What is the value of a service? ','The benefits, usefulness, or importance of the service, as perceived by the \r\nstakeholders','The amount of money that is created or saved for the service consumers by \r\nusing the service','A tangible or intangible deliverable of the service','A result for a stakeholder enabled by the outputs of the service',1,1),
(4,'How can service consumers contribute to risk mitigation?','Through the provision of services according to predefined needs','By ensuring that the service provider has configured correctly its resources ','By being fully aware of their own requirements for the service','By controlling the specific level of risk on the service provider\'s behalf',3,1),
(5,'What ensures that service providers and service consumers continue to create value together? ','Service consumption','Service offerings ','Service level management ','Service relationship management',4,1),
(6,'Which ITIL concept helps an organization to make good decisions?','Four dimensions of service management','Guiding principles','Service value chain','Practices',2,1),
(7,'A good way to apply the ITIL guiding principle \'focus on value\' is to: ','Undestand services are used by service consumers ','Understand the whole, but do something','Be aware of system complexity','Do less tasks but in a better way with higher quality ',1,1),
(8,'What are the KEY stakeholder groups that service providers should cooperate with?','Suppliers','Customers','Relationship managers','Developers',2,1),
(9,'Which of the following guiding principles proposes the elimination of unnecessary WORK?','Keep it simple and practical','Think and work holistically','Start where you are ','Progress iteratively with feedback ',1,1),
(10,'Identify the missing word in the following sentence. An organization which is undertaking an improvement initiative should [?] the existing methods and services when building for the future. ','Consider','Re-use','Discard','Improve',1,1),
(11,'When working on an improvement iteration, which concept helps to ensure that the iteration activities remain appropriate in changing circumstances?','Minimum viable product','Feedback loop','Analysis paralysis','Direct observation',2,1),
(12,'Which is described by the \'organizations and people\' dimension of service management?','Workflows and controls','Communication and collaboration','Inputs and outputs','Contracts and agreements',2,1),
(13,'Which of the four dimensions contributes MOST to defining activities needed to deliver services?','Organizations and people','Information and technology','Partners and suppliers','Value streams and processes',4,1),
(14,'Which component is focused on the activities needed by an organization to help it co-create value?','Service value chain','Continual improvement','Guiding principles','Practices',1,1),
(15,'Which statement about the inputs and outputs of the value chain activities is CORRECT?','Inputs and outputs are fixed for each value chain activity','Some value chain activities only have inputs, whereas others only have outputs','The organization\'s governance will determine the inputs and outputs of each value chain activity','Each value chain activity receives inputs and provides outputs',4,1),
(16,'Which of the following statements is included in the \'improve\' value chain activity\'s purpose?','Ensure the continual improvement of practices across all value chain activities','Ensure services continually meet expectations for quality, costs, and time to market','Ensure a shared understanding of the improvement direction for services across the organization','Ensure continual engagement and good relationships with all stakeholders',1,1),
(17,'Which practice handles all pre-defined user-initiated service actions?','Deployment management','Incident management','Service level management','Service request management',4,1),
(18,'Which practice has a purpose that includes managing authentication and non-repudiation?','Information security management','Change enablement','Service configuration management','IT asset management',1,1),
(19,'What is included in the purpose of the \'relationship management\' practice?','Creating collaborative relationships with key suppliers to uncover and realize new value','Setting clear business-based targets so that the delivery of a service can be properly assessed','Identifying, analysing, monitoring, and the continual improvement of relationships with stakeholders','Handling all pre-defined, user-initiated service requests in an effective and user-friendly manner',3,1),
(20,'What is included in the purpose of the \'release management\' practice?','Ensuring information about services is available','Moving new software to live environments','Making new features available for use','Authorizing changes to proceed',3,1),
(21,'What is included in the purpose of the \'IT asset management\' practice? ','Moving assets to live or other environments for testing or staging','Supporting decision-making about purchase, re-use, retirement, and disposal of assets','Making new and changed assets available for use','Providing information on how assets are configured and the relationships',2,1),
(22,'Which is a financially valuable component that can contribute to the delivery of a service?','Configuration item','Service offering','Sponsor','IT asset',4,1),
(23,'Identify the missing word(s) in the following sentence. A(n) [?] is the cause, or potential cause, of one or more incidents.','Known error','Change','Event','Problem',4,1),
(24,'A service will be unavailable for the next two hours for unplanned maintenance. Which practice is MOST LIKELY to be involved in managing this?','Incident management','Problem management','Change enablement','Service request management',1,1),
(25,'Which practice conducts reviews to validate that services are covering the needs of the customer? ','Monitoring and event management','Service level management','Change enablement','Service desk',2,1),
(26,'Which of the following is the MOST important for effective incident management?','Collaboration tools and techniques','Balanced scorecard review','Automated pipelines','A variety of access channels',1,1),
(27,'Which is an example of a service request?','A request for normal operation to be restored','A request to implement a security patch','A request for access to a file','A request to investigate the cause of an incident',3,1),
(28,'Which practice MOST requires staff who demonstrate skills such as empathy and emotional intelligence?','Service desk','Continual improvement','Problem management','Service request management',1,1),
(29,'Which practice needs the right culture to be embedded across the entire organization?','Service level management','Service request management','Continual improvement','Change enablement',3,1),
(30,'Which term is used to describe removing something that could have an effect on a service?','An IT asset','A problem','A change','An incident',3,1),
(31,'What is the CORRECT order for the three phases of problem management?','Problem control, error control, problem identification','Error control, problem control, problem identification','Problem identification, problem control, error control','Problem identification, error control, problem control',3,1),
(32,'What is MOST LIKELY to be handled as a service request?','Managing an interruption to a service','An emergency change to apply a security patch','The implementation of a workaround','Providing a virtual server for a development team',4,1),
(33,'What is the difference between the \'incident management\' and \'service desk\' practices?','Incident management restores service operation, service desk provides communication with users','Incident management resolves complex issues, service desk resolves simpler issues','Incident management resolves issues, service desk investigates the underlying causes of issues','Incident management manages interruptions to services, service desk monitors achieved service quality',1,1),
(34,'What is used as a tool to help define and measure performance?','A service level agreement','A continual improvement register','An incident record','A change schedule',1,1),
(35,'Which of the following statements about change authorization is CORRECT?','Every time a standard change is requested a change authority is assigned','The technician making an emergency change can authorize such changes','The change type and model is the basis for assigning the change authority','Ensuring that changes are authorized after their deployment is done by the change authority',3,1),
(36,'Which practice guarantees that users have a range of access channels to choose from to report problems?','Service desk','Service level management','Incident management','Change enablement',1,1),
(37,'Which of the following is a necessity to a successful service level agreement (SLAs)?','The language and terms used in the SLA should be commonly understood by all parties','Base the SLA on system-based metrics that are useful to the service provider','In order to promote consistent service, they should be be carried forward, unchanged, from one year to the next','Vague targets, such as those related to user experience, should be avoided',1,1),
(38,'Which is the MOST LIKELY way of resolving major incidents?','Users establishing a resolution using self-help','The service desk identifying the cause and a resolution','A temporary team working together to identify a resolution','A support team following detailed procedures for investigating the incident',3,1),
(39,'Which statement about a \'continual improvement register (CIR)\' is TRUE?','Used to help plan changes, assist in communication, avoid conflicts, and assign resources','Used to select the right method, model or technique for identifying improvements','Used to track and manage improvement ideas from identification through to final action','Used to provide a formal description of one or more services, designed to address the needs of a target consumer group',3,1),
(40,'Which of the following practices suggests that organizations should develop competencies in methodologies and techniques, like SWOT (strength, weakness, opportunity and threat) analysis and balanced scorecard review, in order to meet their needs?','Incident management','Continual improvement','Service request management','Change enablement',2,1),
(41,'What is a user?','The role that directs and controls an organization','The role that uses services','The role that authorizes budget for service consumption','The role that defines the requirements for a service',2,1),
(42,'What is the definition of \'service management\'?','A set of specialized organizational capabilities for enabling value for customers in the form of services','A result for a stakeholder enabled by one or more outputs','A formal description of one or more services, designed to address the needs of a target consumer group','Joint activities performed by a service provider and a service consumer to ensure continual value co-creation',1,1),
(43,'Which of the following terms is more suitable to describe the functionality of a service?','Output','Outcome','Utility','Warranty',3,1),
(44,'Which of the following statements about \'outcomes\' is TRUE?','The delivery of products to a stakeholder is enabled by outcomes','The level of expenses regarding a technology for a service is defined by an outcome','An outcome depends on at least one output to deliver a result','Outcomes provide assurance to stakeholders regarding the performance of a service',4,1),
(45,'What ensures that service providers and service consumers continue to create value together?','Service consumption','Service offerings','Service level management','Service relationship management',4,0),
(46,'What are the KEY stakeholder groups that service providers should cooperate with?','Suppliers','Customers','Relationship managers','Developers',2,0),
(47,'A good way to apply the ITIL guiding principle \'keep it simple and practical\' is to:','Communicate so that the audience will hear','Re-use nothing from the current state','Adopt a practice which is easy to follow','Understand that fast does not mean incomplete',3,1),
(48,'Which activity is NOT recommended by the \'start where you are\' guiding principle?','Involving people who are not familiar with a service when observing and assessing its activities','Applying risk management when considering to introduce new processes','Using source data to avoid any unintentional data distortion found in reports','Discarding existing processes before assessing their usefulness',4,1),
(49,'Which is recommended as part of the \'progress iteratively with feedback\' guiding principle?','Prohibit changes to plans after they have been finalized','Analyse the whole situation in detail before taking any action','Reduce the number of steps that produce tangible results','Organize work into small manageable units',4,1),
(50,'When considering the type of replationship required with other organizations involved in the design and delivery of services, which dimension of service management are you utilizing?','Organizations and people','Information and technology','Partners and suppliers','Value streams and processes',3,1),
(51,'Which of the four dimensions focuses on roles, responsibilities, and systems of authority?','Organizations and people','Information and technology','Partners and suppliers','Value streams and processes',1,1),
(52,'Which is an input to the service value system?','The system of directing and controlling an organization','Recommendations to help an organization in all aspects of its work','A model to help meet stakeholders\' expectations','A need from consumers for new or changed services',4,1),
(53,'Which service value chain activity relates with buying new products?','Engage','Obtain/build','Plan','Improve',2,1),
(54,'Which statement about the purpose of the Monitoring and event management practice is TRUE?','inimize the negative impact of incidents by restoring normal service operation as quickly as possible','Support the agreed quality of a service by handling all pre-defined, user-initiated service requests in an effective and user-friendly manner','Systematically observe services and service components, and record and report selected changes of state identified as events','Maximize the number of successful service and product changes by ensuring that risks have been properly assessed, authorized and managed within a schedule',3,1),
(55,'Which practice has a purpose that involves creating closer, more collaborative relationships?','Supplier management','Information security management','Release management','Service configuration management',1,1),
(56,'Identify the missing word in the following sentence. The purpose of the service configuration management practice is to ensure that accurate and reliable information about the configuration of [?], and the CIs that support them, is available when and where it is needeD)','Organizations','Outcomes','IT assets','Services',4,1),
(57,'Which practice has a purpose that includes the management of financially valuable components that can contribute to the delivery of an IT service?','Deployment management','Service configuration management','Change enablement','IT asset management',4,1),
(58,'Identify the missing word(s) in the following sentence. The purpose of the problem management practice is to reduce the likelihood and impact of incidents by identifying actual and potential causes of incidents, and managing [?] and known errors.','Events','change','configuration items','workarounds',4,1),
(59,'Which describes an unresolved problem which has been already analysed?','A workaround','An incident','A known error','A risk',3,1),
(60,'Which term is used to define \"any component that needs to be managed in order to deliver an IT service\"?','An event','An IT asset','A configuration item','A change',2,1),
(61,'Which is the BEST type of resource for investigating complex incidents?','Self-help systems','Knowledgeable support staff','Detailed work instructions','Disaster recovery plans',2,1),
(62,'Which practice conducts reviews to validate that services are covering the needs of the customer?','Monitoring and event management','Service level management','Change enablement','Service desk',2,0),
(63,'What is the MOST LIKELY reason that incident management would need a temporary team to work together?','To escalate an incident to a supplier or partner','So users can resolve their own incidents with self-help','To resolve a complex or major incident','So customers and users are provided with timely updates',3,1),
(64,'Which of the following is a necessity to a successful service level agreement (SLAs)?','The language and terms used in the SLA should be commonly understood by all parties','Base the SLA on system-based metrics that are useful to the service provide','In order to promote consistent service, they should be be carried forward, unchanged, from one year to the next','Vague targets, such as those related to user experience, should be avoided',1,0),
(65,'Which is the MOST LIKELY way of resolving major incidents?','Users establishing a resolution using self-help','The service desk identifying the cause and a resolution','A temporary team working together to identify a resolution','A support team following detailed procedures for investigating the inciden',3,0),
(66,'A user wants to know how to create a report, so they come into contact with the service desk. Which practice is MOST LIKELY to help with the solution of this issue?','Incident management','Service level management','Service request management','Change enablement',3,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
