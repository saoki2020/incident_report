
-- テーブル作成
CREATE TABLE MST_JOB (
  job_id tinyint NOT NULL AUTO_INCREMENT primary key,
  job_name varchar(255) NOT NULL
);

CREATE TABLE MST_DEPARTMENT (
  dept_id tinyint NOT NULL AUTO_INCREMENT primary key,
  dept_name varchar(255) NOT NULL
);

CREATE TABLE MST_SCENE (
  scene_id tinyint NOT NULL AUTO_INCREMENT primary key,
  scene varchar(255) NOT NULL
);

CREATE TABLE MST_CONTENT (
  content_id tinyint NOT NULL AUTO_INCREMENT primary key,
  content varchar(255) NOT NULL
);

CREATE TABLE MST_DETAIL (
  detail_id tinyint NOT NULL AUTO_INCREMENT primary key,
  detail varchar(255) NOT NULL
);

CREATE TABLE MST_MISTAKE (
  mistake_id tinyint NOT NULL AUTO_INCREMENT primary key,
  mistake varchar(255) NOT NULL
);

CREATE TABLE MST_DEST (
  dest_id tinyint NOT NULL AUTO_INCREMENT primary key,
  dest varchar(255) NOT NULL
);

CREATE TABLE USER (
  user_id smallint NOT NULL AUTO_INCREMENT primary key,
  name varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  job_id tinyint NOT NULL,
  dept_id tinyint NOT NULL,
  isChief boolean NOT NULL,
  isRegistration boolean NOT NULL,
  CONSTRAINT user_jobid_fk FOREIGN KEY (job_id) REFERENCES MST_JOB(job_id),
  CONSTRAINT user_deptid_fk FOREIGN KEY (dept_id) REFERENCES MST_DEPARTMENT(dept_id)
);

CREATE TABLE REPORT (
  report_no smallint NOT NULL AUTO_INCREMENT primary key,
  user_id smallint NOT NULL,
  incident_date datetime NOT NULL,
  scene_id tinyint NOT NULL,
  content_id tinyint NOT NULL,
  detail_id tinyint NOT NULL,
  mistake_id tinyint NOT NULL,
  report_date datetime NOT NULL,
  dest_id tinyint NOT NULL,
  risk tinyint NOT NULL,
  lose_trust tinyint NOT NULL,
  situation text NOT NULL,
  correspondence text NOT NULL,
  factor text NOT NULL,
  measure text NOT NULL,
  comment text,
  CONSTRAINT report_userid_fk FOREIGN KEY (user_id) REFERENCES USER(user_id),
  CONSTRAINT report_scene_fk FOREIGN KEY (scene_id) REFERENCES MST_SCENE(scene_id),
  CONSTRAINT report_content_fk FOREIGN KEY (content_id) REFERENCES MST_CONTENT(content_id),
  CONSTRAINT report_detail_fk FOREIGN KEY (detail_id) REFERENCES MST_DETAIL(detail_id),
  CONSTRAINT report_mistake_fk FOREIGN KEY (mistake_id) REFERENCES MST_MISTAKE(mistake_id),
  CONSTRAINT report_dest_fk FOREIGN KEY (dest_id) REFERENCES MST_DEST(dest_id)
);


--マスターテーブルのデータ入力
INSERT INTO MST_JOB (job_name) VALUES ('医師');
INSERT INTO MST_JOB (job_name) VALUES ('看護師');
INSERT INTO MST_JOB (job_name) VALUES ('理学療法士');
INSERT INTO MST_JOB (job_name) VALUES ('作業療法士');
INSERT INTO MST_JOB (job_name) VALUES ('放射線技師');
INSERT INTO MST_JOB (job_name) VALUES ('臨床工学技士');
INSERT INTO MST_JOB (job_name) VALUES ('薬剤師');
INSERT INTO MST_JOB (job_name) VALUES ('事務');
INSERT INTO MST_JOB (job_name) VALUES ('クラーク');
INSERT INTO MST_JOB (job_name) VALUES ('その他');
