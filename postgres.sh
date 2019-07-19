# docker exec -it postgres psql -U postgres -c "create database store"
docker exec -it postgres psql -U postgres -c "create table if not exists users(id serial primary key, name varchar(255) not null, created_at timestamp not null default current_timestamp);"
docker exec -it postgres psql -U postgres -c "select * from users"
