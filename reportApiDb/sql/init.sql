DROP DATABASE IF EXISTS report_db;
CREATE DATABASE report_db;

USE report_db;

DROP TABLE IF EXISTS MST_JOB;
DROP TABLE IF EXISTS MST_DEPARTMENT;
DROP TABLE IF EXISTS MST_SCENE;
DROP TABLE IF EXISTS MST_MISTAKE;
DROP TABLE IF EXISTS MST_CONTENT;
DROP TABLE IF EXISTS MST_DETAIL;
DROP TABLE IF EXISTS MST_DEST;
DROP TABLE IF EXISTS MST_CLINICAL_DEPT;
DROP TABLE IF EXISTS USER;
DROP TABLE IF EXISTS REPORT;

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

CREATE TABLE MST_CLINICAL_DEPT (
  clinical_dept_id tinyint NOT NULL AUTO_INCREMENT primary key,
  clinical_dept_name varchar(255) NOT NULL
);

CREATE TABLE USER (
  user_id smallint NOT NULL AUTO_INCREMENT primary key,
  name varchar(255) NOT NULL,
  email varchar(255) NOT NULL UNIQUE,
  password varchar(255) NOT NULL,
  job_id tinyint NOT NULL,
  dept_id tinyint NOT NULL,
  isChief boolean NOT NULL,
  isRegistration boolean NOT NULL DEFAULT 0,
  CONSTRAINT user_jobid_fk FOREIGN KEY (job_id) REFERENCES MST_JOB(job_id),
  CONSTRAINT user_deptid_fk FOREIGN KEY (dept_id) REFERENCES MST_DEPARTMENT(dept_id)
);

CREATE TABLE REPORT (
  report_no smallint NOT NULL AUTO_INCREMENT primary key,
  user_id smallint NOT NULL,
  experience smallint NOT NULL,
  patient_name text NOT NULL,
  patient_age tinyint NOT NULL,
  patient_gender text NOT NULL,
  clinical_dept_id tinyint NOT NULL,
  disease text NOT NULL,
  hospital_date date NOT NULL,
  doctor text NOT NULL,
  incident_datetime datetime NOT NULL,
  scene_id tinyint NOT NULL,
  content_id tinyint NOT NULL,
  detail_id tinyint NOT NULL,
  mistake_id tinyint NOT NULL,
  report_datetime datetime NOT NULL,
  dest_id tinyint NOT NULL,
  risk tinyint NOT NULL,
  lose_trust tinyint NOT NULL,
  situation text NOT NULL,
  response text NOT NULL,
  factor text NOT NULL,
  prevention text NOT NULL,
  comment text,
  CONSTRAINT report_userid_fk FOREIGN KEY (user_id) REFERENCES USER(user_id),
  CONSTRAINT report_scene_fk FOREIGN KEY (scene_id) REFERENCES MST_SCENE(scene_id),
  CONSTRAINT report_content_fk FOREIGN KEY (content_id) REFERENCES MST_CONTENT(content_id),
  CONSTRAINT report_detail_fk FOREIGN KEY (detail_id) REFERENCES MST_DETAIL(detail_id),
  CONSTRAINT report_mistake_fk FOREIGN KEY (mistake_id) REFERENCES MST_MISTAKE(mistake_id),
  CONSTRAINT report_dest_fk FOREIGN KEY (dest_id) REFERENCES MST_DEST(dest_id),
  CONSTRAINT report_clinical_dept_fk FOREIGN key (clinical_dept_id) REFERENCES MST_CLINICAL_DEPT (clinical_dept_id)
);

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
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('外来');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('手術室');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('救急外来');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('検査室');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('放射線科');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('薬剤科');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('透析室');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('内視鏡室');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('ICU');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('CCU');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('小児科');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('A病棟');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('B病棟');
INSERT INTO MST_SCENE (scene) VALUES ('病室');
INSERT INTO MST_SCENE (scene) VALUES ('集中治療室');
INSERT INTO MST_SCENE (scene) VALUES ('透析室');
INSERT INTO MST_SCENE (scene) VALUES ('リハビリ室');
INSERT INTO MST_SCENE (scene) VALUES ('手術室');
INSERT INTO MST_SCENE (scene) VALUES ('トイレ');
INSERT INTO MST_SCENE (scene) VALUES ('浴室');
INSERT INTO MST_SCENE (scene) VALUES ('階段、廊下、ホール');
INSERT INTO MST_SCENE (scene) VALUES ('検査室');
INSERT INTO MST_SCENE (scene) VALUES ('放射線科');
INSERT INTO MST_SCENE (scene) VALUES ('薬剤科');
INSERT INTO MST_SCENE (scene) VALUES ('外来');
INSERT INTO MST_SCENE (scene) VALUES ('売店');
INSERT INTO MST_SCENE (scene) VALUES ('庭');
INSERT INTO MST_SCENE (scene) VALUES ('エレベーター');
INSERT INTO MST_SCENE (scene) VALUES ('その他');
INSERT INTO MST_CONTENT (content) VALUES ('薬物');
INSERT INTO MST_CONTENT (content) VALUES ('輸血');
INSERT INTO MST_CONTENT (content) VALUES ('手術');
INSERT INTO MST_CONTENT (content) VALUES ('麻酔');
INSERT INTO MST_CONTENT (content) VALUES ('検査');
INSERT INTO MST_CONTENT (content) VALUES ('処置');
INSERT INTO MST_CONTENT (content) VALUES ('診察');
INSERT INTO MST_CONTENT (content) VALUES ('自己抜去');
INSERT INTO MST_CONTENT (content) VALUES ('事故抜去');
INSERT INTO MST_CONTENT (content) VALUES ('転倒・転落');
INSERT INTO MST_CONTENT (content) VALUES ('食事');
INSERT INTO MST_CONTENT (content) VALUES ('接遇');
INSERT INTO MST_CONTENT (content) VALUES ('不明');
INSERT INTO MST_CONTENT (content) VALUES ('その他');
INSERT INTO MST_DETAIL (detail) VALUES ('点滴');
INSERT INTO MST_DETAIL (detail) VALUES ('注射');
INSERT INTO MST_DETAIL (detail) VALUES ('経口薬');
INSERT INTO MST_DETAIL (detail) VALUES ('経管投与');
INSERT INTO MST_DETAIL (detail) VALUES ('外用薬');
INSERT INTO MST_DETAIL (detail) VALUES ('麻酔');
INSERT INTO MST_DETAIL (detail) VALUES ('生理検査');
INSERT INTO MST_DETAIL (detail) VALUES ('X線');
INSERT INTO MST_DETAIL (detail) VALUES ('CT');
INSERT INTO MST_DETAIL (detail) VALUES ('MRI');
INSERT INTO MST_DETAIL (detail) VALUES ('造影');
INSERT INTO MST_DETAIL (detail) VALUES ('内視鏡');
INSERT INTO MST_DETAIL (detail) VALUES ('採血');
INSERT INTO MST_DETAIL (detail) VALUES ('心カテ');
INSERT INTO MST_DETAIL (detail) VALUES ('IVH');
INSERT INTO MST_DETAIL (detail) VALUES ('尿道カテ');
INSERT INTO MST_DETAIL (detail) VALUES ('レスピレーター管理');
INSERT INTO MST_DETAIL (detail) VALUES ('挿管チューブ');
INSERT INTO MST_DETAIL (detail) VALUES ('Aライン');
INSERT INTO MST_DETAIL (detail) VALUES ('ドレーン類');
INSERT INTO MST_DETAIL (detail) VALUES ('胃管');
INSERT INTO MST_DETAIL (detail) VALUES ('自力歩行');
INSERT INTO MST_DETAIL (detail) VALUES ('補助具で歩行');
INSERT INTO MST_DETAIL (detail) VALUES ('車いす使用');
INSERT INTO MST_DETAIL (detail) VALUES ('ストレッチャー移動');
INSERT INTO MST_DETAIL (detail) VALUES ('リハビリ');
INSERT INTO MST_DETAIL (detail) VALUES ('入浴');
INSERT INTO MST_DETAIL (detail) VALUES ('排泄');
INSERT INTO MST_DETAIL (detail) VALUES ('ベッド');
INSERT INTO MST_DETAIL (detail) VALUES ('配膳');
INSERT INTO MST_DETAIL (detail) VALUES ('異物混入');
INSERT INTO MST_DETAIL (detail) VALUES ('窒息・誤嚥');
INSERT INTO MST_DETAIL (detail) VALUES ('食中毒');
INSERT INTO MST_DETAIL (detail) VALUES ('診察拒否');
INSERT INTO MST_DETAIL (detail) VALUES ('無断離院');
INSERT INTO MST_DETAIL (detail) VALUES ('事故退院');
INSERT INTO MST_DETAIL (detail) VALUES ('盗難・紛失');
INSERT INTO MST_DETAIL (detail) VALUES ('自傷');
INSERT INTO MST_DETAIL (detail) VALUES ('暴行');
INSERT INTO MST_DETAIL (detail) VALUES ('暴言');
INSERT INTO MST_DETAIL (detail) VALUES ('自殺・未遂');
INSERT INTO MST_DETAIL (detail) VALUES ('患者間のトラブル');
INSERT INTO MST_DETAIL (detail) VALUES ('訪問者による乱暴');
INSERT INTO MST_DETAIL (detail) VALUES ('院内器具設備の破壊');
INSERT INTO MST_DETAIL (detail) VALUES ('禁止品の持ち込み');
INSERT INTO MST_DETAIL (detail) VALUES ('電話での対応トラブル');
INSERT INTO MST_DETAIL (detail) VALUES ('窓口でのトラブル');
INSERT INTO MST_DETAIL (detail) VALUES ('診察中のトラブル');
INSERT INTO MST_DETAIL (detail) VALUES ('その他');
INSERT INTO MST_MISTAKE (mistake) VALUES ('処方・指示ミス');
INSERT INTO MST_MISTAKE (mistake) VALUES ('記入ミス');
INSERT INTO MST_MISTAKE (mistake) VALUES ('誤調剤');
INSERT INTO MST_MISTAKE (mistake) VALUES ('投与量');
INSERT INTO MST_MISTAKE (mistake) VALUES ('投与薬');
INSERT INTO MST_MISTAKE (mistake) VALUES ('投与時間');
INSERT INTO MST_MISTAKE (mistake) VALUES ('投与方法');
INSERT INTO MST_MISTAKE (mistake) VALUES ('投与忘れ');
INSERT INTO MST_MISTAKE (mistake) VALUES ('人違い');
INSERT INTO MST_MISTAKE (mistake) VALUES ('飲み忘れ');
INSERT INTO MST_MISTAKE (mistake) VALUES ('点滴漏れ');
INSERT INTO MST_MISTAKE (mistake) VALUES ('点滴忘れ');
INSERT INTO MST_MISTAKE (mistake) VALUES ('点滴速度');
INSERT INTO MST_MISTAKE (mistake) VALUES ('点滴順番の間違い');
INSERT INTO MST_MISTAKE (mistake) VALUES ('神経損傷');
INSERT INTO MST_MISTAKE (mistake) VALUES ('感染');
INSERT INTO MST_MISTAKE (mistake) VALUES ('副作用');
INSERT INTO MST_MISTAKE (mistake) VALUES ('異型輸血');
INSERT INTO MST_MISTAKE (mistake) VALUES ('ME機器の操作ミス');
INSERT INTO MST_MISTAKE (mistake) VALUES ('部位違い');
INSERT INTO MST_MISTAKE (mistake) VALUES ('清潔区域の汚染');
INSERT INTO MST_MISTAKE (mistake) VALUES ('手術体位');
INSERT INTO MST_MISTAKE (mistake) VALUES ('実施忘れ');
INSERT INTO MST_MISTAKE (mistake) VALUES ('針紛失');
INSERT INTO MST_MISTAKE (mistake) VALUES ('ガーゼ紛失');
INSERT INTO MST_MISTAKE (mistake) VALUES ('器具紛失');
INSERT INTO MST_MISTAKE (mistake) VALUES ('体内残留');
INSERT INTO MST_MISTAKE (mistake) VALUES ('器具・設備トラブル');
INSERT INTO MST_MISTAKE (mistake) VALUES ('同意未確認');
INSERT INTO MST_DEST (dest) VALUES ('主治医');
INSERT INTO MST_DEST (dest) VALUES ('当直医');
INSERT INTO MST_DEST (dest) VALUES ('所属長');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('総合内科');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('消化器内科');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('循環器内科');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('呼吸器内科');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('腎臓内科');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('泌尿器科');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('整形外科');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('呼吸器外科');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('脳神経外科');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('心臓血管外科');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('皮膚科');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('眼科');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('麻酔科');
