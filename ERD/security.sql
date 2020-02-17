SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS authorities;
DROP TABLE IF EXISTS users;




/* Create Tables */

CREATE TABLE authorities
(
	username varchar(50) NOT NULL,
	authority varchar(50) NOT NULL
);


CREATE TABLE users
(
	username varchar(50) NOT NULL,
	password varchar(50) NOT NULL,
	enabled char(1) DEFAULT '1',
	PRIMARY KEY (username)
);



/* Create Foreign Keys */

ALTER TABLE authorities
	ADD FOREIGN KEY (username)
	REFERENCES users (username)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;

insert into users (username, password ) values ('user00', '1234');
insert into users (username, password ) values ('member00', '1234');
insert into users (username, password ) values ('admin00', '1234');

insert into authorities values ('user00', 'ROLE_USER');
insert into authorities values ('member00', 'ROLE_MANAGER');
insert into authorities values ('admin00', 'ROLE_MANAGER');
insert into authorities values ('admin00', 'ROLE_ADMIN');

select u.username, u.password , u.enabled, a.authority
from users u, authorities a
where u.username = a.username ;

