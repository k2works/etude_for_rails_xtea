## 構築
事前にマイグレーションでDBを作成しておく

データベース設定をMySQLに変更する。
jdbc:mysql://localhost:3306/etude_for_rails_xtea_development
root
password

接続先変更後にモジュール一括作成を実行する

システム管理ユーザーを登録する

|IDUSER	| TXNAME         | TXPASSWORD                       | DTVALID    | DTEXPIRE   | TXEMAIL | TXMENUS | NREMPLOYEE | UPDCOUNTER |
|:------|-------:        |:----------:                      |:-----------:|:---------:|:-------:|:-------:|:----------:|:----------:|
| 00000	| admin          | f1b708bba17f1ce948dc979f4d7092bc	| 2000/01/01 | 9999/12/31 |         | ALL     |            |            |

`/etc/mysql/mysql.conf.d/mysqld.conf`に以下を追加してサービスを再起動する
```text
character-set-server=utf8
[client]
default-character-set=sjis
```

## 配置
schema.rbの作成
```bash
rails db:schema:dump
rails db:structure:dump
```

マイグレーションファイルの作成
```bash
rails g migration create_tables
```
`schema.rb`の内容をコピペする
```bash
rails db:migrate
```

モデルの作成
```bash
rails g model department --migration false
rails g model department_hierarchy --migration false
rails g model employee --migration false
rails g model employee_department --migration false
```

## 運用

## 参照
+ [Rails - schema.rb（既存DBを使ったアプリ作成）](https://qiita.com/edo1z/items/a0bf22b294406f00ec7c)
+ [rails 既存DBを使ってrailsしてみた。](http://hmu29.hatenablog.com/entry/2014/02/14/001513)
+ [Composite Primary Keys for ActiveRecords](https://github.com/composite-primary-keys/composite_primary_keys)
