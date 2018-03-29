# README

```bash
docker run -p 3306:3306 --name mysqld -e MYSQL_ROOT_PASSWORD=password -d library/mysql:5.7
mysql -h127.0.0.1 -uroot -ppassword
> exit
bundle install
bundle exec rake db:cresate
bundle exec rake db:migrate
```

```bash
docker-compose up -d
mysql -h127.0.0.1 -uroot -ppassword
> exti
```
