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
| 00000	| admin | f1b708bba17f1ce948dc979f4d7092bc	| 2000/01/01 | 9999/12/31 |         | ALL     |            |            |

`/etc/mysql/mysql.conf.d/mysqld.conf`に以下を追加してサービスを再起動する
```text
character-set-server=utf8
[client]
default-character-set=sjis
```

## 配置

## 運用

## 参照

