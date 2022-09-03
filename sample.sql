ユーザー１：役職者
ユーザー２：一般

役職者１、コメント未
INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention)
VALUES (1,25,'患者太郎',99,'Male',1,'イレウス','2020-01-01','医者１','2020-01-01 12:00:00',1,1,1,1,'2020-01-01',1,1,1,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える');

一般２、コメント未
INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention)
VALUES (2,30,'患者次郎',88,'Male',2,'心筋梗塞','2021-01-01','医者2','2021-01-01 12:00:00',2,2,2,2,'2021-01-01',2,2,2,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える');

一般２、コメント済
INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (2,30,'患者三郎',88,'Male',2,'心筋梗塞','2022-01-01','医者2','2022-01-01 12:00:00',3,3,3,3,'2022-01-01',3,3,3,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');

役職者１、コメント済
INSERT INTO REPORT (user_id, experience, patient_name, patient_age, patient_gender, clinical_dept_id, disease, hospital_date, doctor, incident_datetime, scene_id, content_id, detail_id, mistake_id, report_datetime, dest_id, risk, lose_trust, situation, response, factor, prevention, comment)
VALUES (1,25,'患者四郎',77,'Fale',1,'睡眠時無呼吸症候群','2020-02-01','医者3','2020-02-01 12:00:00',4,4,4,4,'2020-02-01',3,4,4,'インシデント発生時の状況を説明','その場で行った対応を説明','原因を分析','対応策を考える','役職者のコメント');
