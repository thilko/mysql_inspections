create table repositories(id int(11) primary key);

create table ci_statuses( id int(11) primary key auto_increment, 
                          state varchar(255) not null default 'unknown', 
                          sha varchar(255) not null, 
                          repository_id int(11) null,
                          created_at datetime null,
                          updated_at datetime null,
                          pull_request_id int(11) null,
                          context varchar(255) default 'default'
                          );

create index sha on ci_statuses(sha);
create index pull_request_created_at on ci_statuses(pull_request_id, created_at);
create index repository_id_created_at on ci_statuses(repository_id, created_at);

/*
V+-----------------+--------------+------+-----+---------+----------------+
| Field | Type | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+----------------+
| id | int(11) | NO | PRI | NULL | auto_increment |
| state | varchar(255) | NO | | unknown | |
| sha | varchar(255) | NO | MUL | NULL | |
| repository_id | int(11) | NO | MUL | NULL | |
| created_at | datetime | YES | | NULL | |
| updated_at | datetime | YES | | NULL | |
| pull_request_id | int(11) | YES | MUL | NULL | |
| context | varchar(255) | YES | | default | |
+-----------------+--------------+------+-----+---------+----------------+
*/
