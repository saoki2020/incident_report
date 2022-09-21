INSERT INTO USER (user_id, name, email, password, job_id, dept_id, isChief, isRegistration) VALUES (1, 'test1', 'test1@test.com', '$2b$10$Ug7624l8lA77VAj/YZo3HuqFyJp5834IWNyvRStSBcYjkruY59/Si', 1, 2, 1, 1);

INSERT INTO USER (user_id, name, email, password, job_id, dept_id, isChief, isRegistration) VALUES (2, 'test2', 'test2@test.com', '$2b$10$INWkUd/9hGS6zH9v8Np5UuUYMP1.tnhKWofiPrnxkXqpUYgKYa22G', 4, 5, 1, 1);

INSERT INTO USER (user_id, name, email, password, job_id, dept_id, isChief, isRegistration) VALUES (3, 'test3', 'test3@test.com', '$2b$10$CgJlB2mWdIkzWJMtgVbALukgWMoOXuZgkiWVuMb.psYOdkX/tClrS', 3, 6, 1, 1);

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention)
VALUES (1,25,'患者太郎',99,'Male',1,'イレウス','2021-01-01','医者１','2020-01-01 12:00:00',1,1,1,1,'2020-01-01',1,1,1,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention)
VALUES (2,30,'患者次郎',88,'Male',2,'心筋梗塞','2021-01-01','医者2','2021-01-01 12:00:00',2,2,2,2,'2021-01-01',2,2,2,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (2,30,'患者三郎',88,'Male',2,'心筋梗塞','2022-01-01','医者2','2022-01-01 12:00:00',3,3,3,3,'2022-01-01',3,3,3,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',4,4,4,4,'2020-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2019-01-01','医者3','2020-02-01 12:00:00',4,4,4,4,'2019-01-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',1,1,1,1,'2019-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',2,2,2,2,'2019-03-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',3,3,3,3,'2019-04-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',4,4,4,4,'2019-05-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',5,5,5,5,'2019-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',6,6,6,6,'2019-05-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',7,7,7,7,'2019-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',7,7,7,7,'2019-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',8,8,8,8,'2019-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',9,9,9,9,'2019-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',4,4,4,4,'2019-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',10,10,10,10,'2019-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',7,7,7,7,'2019-08-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',7,7,7,7,'2019-09-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');
INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',10,10,10,10,'2019-08-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',8,8,8,8,'2019-09-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',11,11,11,11,'2019-10-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',11,11,11,11,'2019-11-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (2,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',11,11,11,11,'2019-12-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',11,11,11,11,'2019-11-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',1,1,1,1,'2019-12-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2019-01-01','医者3','2020-02-01 12:00:00',4,4,4,4,'2019-01-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',1,1,1,1,'2019-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (2,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',2,2,2,2,'2019-03-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',3,3,3,3,'2019-04-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',4,4,4,4,'2019-05-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',5,5,5,5,'2019-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',6,6,6,6,'2019-05-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',7,7,7,7,'2019-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',7,7,7,7,'2019-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',8,8,8,8,'2019-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',9,9,9,9,'2019-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',4,4,4,4,'2019-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (2,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',10,10,10,10,'2019-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',7,7,7,7,'2019-08-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',7,7,7,7,'2019-09-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',10,10,10,10,'2019-08-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',8,8,8,8,'2019-09-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',11,11,11,11,'2019-10-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',11,11,11,11,'2019-11-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',11,11,11,11,'2019-12-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',11,11,11,11,'2019-11-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',1,1,1,1,'2019-12-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',1,1,1,1,'2020-01-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',1,1,1,1,'2020-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',2,2,2,2,'2020-03-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',2,2,2,2,'2020-04-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (2,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',2,2,2,2,'2020-05-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',2,2,2,2,'2020-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',3,3,3,3,'2020-05-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',3,3,3,3,'2020-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',3,3,3,3,'2020-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',8,8,8,8,'2020-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',8,8,8,8,'2020-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');
INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',8,8,8,8,'2020-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',8,8,8,8,'2020-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',8,8,8,8,'2020-08-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',9,9,9,9,'2020-09-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',9,9,9,9,'2020-08-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',9,9,9,9,'2020-09-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',9,9,9,9,'2020-10-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',10,10,10,10,'2020-11-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',10,10,10,10,'2020-12-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',10,10,10,10,'2020-11-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',10,10,10,10,'2020-12-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',10,10,10,10,'2020-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',1,1,1,1,'2020-01-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',1,1,1,1,'2020-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',2,2,2,2,'2020-03-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',2,2,2,2,'2020-04-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',2,2,2,2,'2020-05-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',2,2,2,2,'2020-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',3,3,3,3,'2020-05-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',3,3,3,3,'2020-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',3,3,3,3,'2020-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',8,8,8,8,'2020-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',8,8,8,8,'2020-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',8,8,8,8,'2020-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',8,8,8,8,'2020-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',8,8,8,8,'2020-08-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',9,9,9,9,'2020-09-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',9,9,9,9,'2020-08-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',9,9,9,9,'2020-09-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',9,9,9,9,'2020-10-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',10,10,10,10,'2020-11-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',10,10,10,10,'2020-12-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',10,10,10,10,'2020-11-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',10,10,10,10,'2020-12-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',10,10,10,10,'2020-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',10,10,10,10,'2021-01-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',10,10,10,10,'2021-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (2,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',10,10,10,10,'2021-03-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',1,1,1,1,'2021-04-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',1,1,1,1,'2021-05-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',1,1,1,1,'2021-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',1,1,1,1,'2021-05-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',1,1,1,1,'2021-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',1,1,1,1,'2021-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',3,3,3,3,'2021-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',3,3,3,3,'2021-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',3,3,3,3,'2021-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',3,3,3,3,'2021-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',3,3,3,3,'2021-08-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',3,3,3,3,'2021-09-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',7,7,7,7,'2021-08-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',7,7,7,7,'2021-09-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',7,7,7,7,'2021-10-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',9,9,9,9,'2021-11-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',9,9,9,9,'2021-12-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',9,9,9,9,'2021-11-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',9,9,9,9,'2021-12-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',9,9,9,9,'2021-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',10,10,10,10,'2021-01-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (2,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',10,10,10,10,'2021-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',10,10,10,10,'2021-03-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',1,1,1,1,'2021-04-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',1,1,1,1,'2021-05-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',1,1,1,1,'2021-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',1,1,1,1,'2021-05-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',1,1,1,1,'2021-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',1,1,1,1,'2021-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',3,3,3,3,'2021-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',3,3,3,3,'2021-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',3,3,3,3,'2021-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',3,3,3,3,'2021-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',3,3,3,3,'2021-08-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',3,3,3,3,'2021-09-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',7,7,7,7,'2021-08-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',7,7,7,7,'2021-09-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',7,7,7,7,'2021-10-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',9,9,9,9,'2021-11-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',9,9,9,9,'2021-12-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',9,9,9,9,'2021-11-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',9,9,9,9,'2021-12-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2021-02-01','医者3','2021-02-01 12:00:00',9,9,9,9,'2021-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',12,12,12,12,'2022-01-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',12,12,12,12,'2022-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',12,12,12,12,'2022-03-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',12,12,12,12,'2022-04-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',12,12,12,12,'2022-05-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',12,12,12,12,'2022-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (2,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',12,12,12,12,'2022-05-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',6,6,6,6,'2022-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',6,6,6,6,'2022-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',6,6,6,6,'2022-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',6,6,6,6,'2022-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',4,4,4,4,'2022-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',4,4,4,4,'2022-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (2,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',4,4,4,4,'2022-08-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',2,2,2,2,'2022-09-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',2,2,2,2,'2022-08-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',2,2,2,2,'2022-09-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',2,2,2,2,'2022-10-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',2,2,2,2,'2022-11-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',1,1,1,1,'2022-12-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',1,1,1,1,'2022-11-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (2,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',3,3,3,3,'2022-12-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',3,3,3,3,'2022-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',12,12,12,12,'2022-01-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',12,12,12,12,'2022-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',12,12,12,12,'2022-03-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (2,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',12,12,12,12,'2022-04-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',12,12,12,12,'2022-05-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',12,12,12,12,'2022-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',12,12,12,12,'2022-05-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',6,6,6,6,'2022-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',6,6,6,6,'2022-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',6,6,6,6,'2022-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',6,6,6,6,'2022-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (2,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',4,4,4,4,'2022-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',4,4,4,4,'2022-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',4,4,4,4,'2022-08-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',2,2,2,2,'2022-09-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',2,2,2,2,'2022-08-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',2,2,2,2,'2022-09-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',2,2,2,2,'2022-10-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',2,2,2,2,'2022-11-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',1,1,1,1,'2022-12-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (2,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',1,1,1,1,'2022-11-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',3,3,3,3,'2022-12-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',3,3,3,3,'2022-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',3,3,3,3,'2022-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (3,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',3,3,3,3,'2022-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');
