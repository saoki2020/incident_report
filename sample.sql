ユーザー1：役職者
ユーザー2：一般
ユーザー3：役職者


役職者１、コメント未
INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention)
VALUES (1,25,'患者太郎',99,'Male',1,'イレウス','2021-01-01','医者１','2020-01-01 12:00:00',1,1,1,1,'2020-01-01',1,1,1,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える');

一般２、コメント未
INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention)
VALUES (2,30,'患者次郎',88,'Male',2,'心筋梗塞','2021-01-01','医者2','2021-01-01 12:00:00',2,2,2,2,'2021-01-01',2,2,2,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える');

一般２、コメント済
INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (2,30,'患者三郎',88,'Male',2,'心筋梗塞','2022-01-01','医者2','2022-01-01 12:00:00',3,3,3,3,'2022-01-01',3,3,3,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

役職者１、コメント済
INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',4,4,4,4,'2020-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

集計用サンプル
2019年
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

2020年
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

2021年
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

2022年
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
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',6.6.6.6,'2022-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',6.6.6.6,'2022-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');
INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',6.6.6.6,'2022-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',6.6.6.6,'2022-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');
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
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',6.6.6.6,'2022-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',6.6.6.6,'2022-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');
INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',6.6.6.6,'2022-06-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2022-02-01','医者3','2022-02-01 12:00:00',6.6.6.6,'2022-07-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');
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


select A.mistake as item, count(B.mistake_id) as itemNum from MST_MISTAKE as A left join REPORT as B on A.mistake_id = B.mistake_id group by A.mistake_id;


select scene_id, DATE_FORMAT(report_datetime, '%Y-%m') as month_grouping ,count(scene_id) as count from REPORT group by month_grouping,scene_id;


select year(report_datetime) from REPORT where year(report_datetime)=2019;

select DATE_FORMAT(report_datetime, '%m') as month ,A.mistake as item, count(B.mistake_id ) as itemNum from MST_MISTAKE as A left join REPORT as B on A.mistake_id = B.mistake_id group by A.mistake_id,month  where year(report_datetime)=2019;

select DATE_FORMAT(report_datetime, '%m') as month ,A.mistake as item, count(B.mistake_id ) as itemNum from MST_MISTAKE as A left
join REPORT as B on A.mistake_id = B.mistake_id where year(report_datetime)=2019 group by A.mistake_id,month;

select DATE_FORMAT(B.report_datetime, '%m') as month, A.mistake as item from MST_MISTAKE as A left join REPORT as B on A.mistake_id = B.mistake_id where year(B.report_datetime)=2019;

年ごと月ごとに分けて、項目ごとに件数が出る
select year(report_datetime) as YEAR, month(report_datetime) as MONTH, content_id, count(content_id) from REPORT group by YEAR,MONTH,content_id;

上のやつにマスターを結合して0件のやつも名前だけは出るようにする
select year(report_datetime) as YEAR, month(report_datetime) as MONTH, A.content, count(B.content_id) from MST_CONTENT as A left join REPORT as B on A.content_id = B.content_id  group by YEAR,MONTH,A.content_id;

結合を逆にしてNULLは表示しない
select year(report_datetime) as YEAR, month(report_datetime) as MONTH, B.content, count(A.content_id) from REPORT as A left join MST_CONTENT as B on A.content_id = B.content_id  group by YEAR,MONTH,B.content_id;

年だけは選択するようにする
select month(report_datetime) as MONTH, A.content, count(B.content_id) from MST_CONTENT as A left join REPORT as B on A.content_id = B.content_id where year(report_datetime)=2019 group by MONTH,A.content_id;

select month(report_datetime) as MONTH, A.content, count(B.content_id) from MST_CONTENT as A where year(report_datetime)=2019 left join REPORT as B on A.content_id = B.content_id;

クロス集計(nullなし)
select content, count(case when month(report_datetime) = 1 then 1 else null end) as Jan
from REPORT as A
left join MST_CONTENT as B
on A.content_id = B.content_id
group by A.content_id;

クロス集計(nullあり,年で分ける)
select A.content,
  count(case when month(report_datetime) = 1 then 1 else null end) as '1月',
  count(case when month(report_datetime) = 2 then 1 else null end) as '2月',
  count(case when month(report_datetime) = 3 then 1 else null end) as '3月',
  count(case when month(report_datetime) = 4 then 1 else null end) as '4月',
  count(case when month(report_datetime) = 5 then 1 else null end) as '5月',
  count(case when month(report_datetime) = 6 then 1 else null end) as '6月',
  count(case when month(report_datetime) = 7 then 1 else null end) as '7月',
  count(case when month(report_datetime) = 8 then 1 else null end) as '8月',
  count(case when month(report_datetime) = 9 then 1 else null end) as '9月',
  count(case when month(report_datetime) = 10 then 1 else null end) as '10月',
  count(case when month(report_datetime) = 11 then 1 else null end) as '11月',
  count(case when month(report_datetime) = 12 then 1 else null end) as '12月'
from MST_CONTENT as A
left join REPORT as B
on A.content_id = B.content_id
where year(B.report_datetime) = 2019
group by A.content_id;

クロス集計(nullあり,年で分ける(case文で条件分け))
select A.content,
  count(case when year(report_datetime) = 2019 && month(report_datetime) = 1 then 1 else null end) as '1月',
  count(case when year(report_datetime) = 2019 && month(report_datetime) = 2 then 1 else null end) as '2月',
  count(case when year(report_datetime) = 2019 && month(report_datetime) = 3 then 1 else null end) as '3月',
  count(case when year(report_datetime) = 2019 && month(report_datetime) = 4 then 1 else null end) as '4月',
  count(case when year(report_datetime) = 2019 && month(report_datetime) = 5 then 1 else null end) as '5月',
  count(case when year(report_datetime) = 2019 && month(report_datetime) = 6 then 1 else null end) as '6月',
  count(case when year(report_datetime) = 2019 && month(report_datetime) = 7 then 1 else null end) as '7月',
  count(case when year(report_datetime) = 2019 && month(report_datetime) = 8 then 1 else null end) as '8月',
  count(case when year(report_datetime) = 2019 && month(report_datetime) = 9 then 1 else null end) as '9月',
  count(case when year(report_datetime) = 2019 && month(report_datetime) = 10 then 1 else null end) as '10月',
  count(case when year(report_datetime) = 2019 && month(report_datetime) = 11 then 1 else null end) as '11月',
  count(case when year(report_datetime) = 2019 && month(report_datetime) = 12 then 1 else null end) as '12月'
from MST_CONTENT as A
left join REPORT as B
on A.content_id = B.content_id
group by A.content_id;

クロス集計(nullあり,年で分ける(case文で条件分け),プリペアードステートメントを一つにする,合計を出す)
with
  params as (select 2019 as select_year)
select A.content,
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 1 then 1 else null end) as '1月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 2 then 1 else null end) as '2月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 3 then 1 else null end) as '3月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 4 then 1 else null end) as '4月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 5 then 1 else null end) as '5月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 6 then 1 else null end) as '6月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 7 then 1 else null end) as '7月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 8 then 1 else null end) as '8月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 9 then 1 else null end) as '9月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 10 then 1 else null end) as '10月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 11 then 1 else null end) as '11月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 12 then 1 else null end) as '12月'
from (MST_CONTENT as A, params as P)
left join REPORT as B
on A.content_id = B.content_id
group by A.content_id
union all
select '合計',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 1 then 1 else null end) as '1月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 2 then 1 else null end) as '2月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 3 then 1 else null end) as '3月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 4 then 1 else null end) as '4月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 5 then 1 else null end) as '5月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 6 then 1 else null end) as '6月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 7 then 1 else null end) as '7月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 8 then 1 else null end) as '8月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 9 then 1 else null end) as '9月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 10 then 1 else null end) as '10月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 11 then 1 else null end) as '11月',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 12 then 1 else null end) as '12月'
from (MST_CONTENT as A, params as P)
left join REPORT as B
on A.content_id = B.content_id;

with句のテスト
with
  params as (
  select
    1 as num)
select content
from MST_CONTENT, params
where content_id = params.num;

毎月のインシデント件数(whereを使ってるからcase文が短い、nullは出てこない)
select
count(case when month(report_datetime) = 1 then 1 else null end) as '1月',
count(case when month(report_datetime) = 2 then 1 else null end) as '2月',
count(case when month(report_datetime) = 3 then 1 else null end) as '3月',
count(case when month(report_datetime) = 4 then 1 else null end) as '4月',
count(case when month(report_datetime) = 5 then 1 else null end) as '5月',
count(case when month(report_datetime) = 6 then 1 else null end) as '6月',
count(case when month(report_datetime) = 7 then 1 else null end) as '7月',
count(case when month(report_datetime) = 8 then 1 else null end) as '8月',
count(case when month(report_datetime) = 9 then 1 else null end) as '9月',
count(case when month(report_datetime) = 10 then 1 else null end) as '10月',
count(case when month(report_datetime) = 11 then 1 else null end) as '11月',
count(case when month(report_datetime) = 12 then 1 else null end) as '12月'
from REPORT
where year(report_datetime) = 2019;


クロス集計(部署)
with
  params as (select 2019 as select_year)
select D.dept_name,
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 1 then 1 else null end) as 'Jan',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 2 then 1 else null end) as 'Feb',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 3 then 1 else null end) as 'Mar',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 4 then 1 else null end) as 'Apr',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 5 then 1 else null end) as 'May',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 6 then 1 else null end) as 'Jun',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 7 then 1 else null end) as 'Jul',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 8 then 1 else null end) as 'Aug',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 9 then 1 else null end) as 'Sep',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 10 then 1 else null end) as 'Oct',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 11 then 1 else null end) as 'Nov',
  count(case when year(report_datetime) = P.select_year && month(report_datetime) = 12 then 1 else null end) as 'Dec'
from (MST_DEPARTMENT as D, params as P)
left join USER as U
on D.dept_id = U.dept_id
left join REPORT as R
on U.user_id = R.user_id
group by D.dept_name;
