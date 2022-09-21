# インシデント報告アプリ動作確認手順

## リポジトリをクローンする
git clone git@github.com:saoki2020/incident_report.git

## DBの環境設定を行う
### リポジトリのルートに.envを作成して以下をコピーし、任意の値を設定する
MYSQL_DATABASE=report_db
MYSQL_USER=
MYSQL_PASSWORD=
MYSQL_ROOT_PASSWORD=

## apiのURLを設定する
### reprotAppディレクトリに.envを作成して以下をコピー
VUE_APP_ROOT_API=http://localhost:3000

## メールの設定をする
### reportApiディレクトリに.envを作成して以下をコピー
MAIL_HOST=mailcatcher
MAIL_PORT=1025

## dockerコンテナを起動する
docker-compose up -d

## サンプルデータの挿入
docker cp ./sample.sql db_container:/tmp/sample.sql
docker exec -it db_container bash
mysql -u root -p report_db < tmp/sample.sql

## アプリにアクセスする
localhost:8080

## 送信したメールを確認するにはmailcatcherを使用
localhost:1080
にアクセスしてメールを確認できる
