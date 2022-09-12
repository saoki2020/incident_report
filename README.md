# インシデント報告アプリ動作確認手順

## リポジトリをクローンする
git clone git@github.com:saoki2020/incident_report.git

## DBの環境設定を行う
### リポジトリのルートに.envを作成して以下をコピーし、任意の値を設定する
MYSQL_DATABASE=report_db
MYSQL_USER=
MYSQL_PASSWORD=
MYSQL_ROOT_PASSWORD=

## dockerコンテナを起動する
docker-compose up -d

## アプリにアクセスする
localhost:8080

## ユーザーを新規登録する
sample.sqlをインポートする前にユーザーを3人分作成する

### 確認メールにはmailcatcherを使用しています
localhost:1080
にアクセスし、受信したメールを確認してください

## サンプルデータの挿入
docker cp ./sample.sql db_container:/tmp/sample.sql
docker exec -it db_container bash
mysql -u root -p report_db < tmp/sample.sql
