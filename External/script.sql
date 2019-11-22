CREATE TABLE USERS (
	USERNAME NVARCHAR(30) NOT NULL,
	ENABLE BIT NOT NULL,
	CREATION_DATE TIMESTAMP NOT NULL
);

ALTER TABLE USERS ADD PRIMARY KEY (USERNAME, ENABLE, CREATION_DATE);

CREATE TABLE CHAT_ROOM (
	CHAT_ROOM NVARCHAR(30) NOT NULL,
	USERNAME nvarchar(30) not null,
	enable bit not null,
	creation_date timestamp not null,
	primary key (chat_room, enable, creation_date)
);

ALTER TABLE CHAT_ROOM ADD CONSTRAINT FK_CHAT_ROOM_USERS FOREIGN KEY (USERNAME) REFERENCES USERS(USERNAME);

create table messages(
	id_messages int identity primary key,
	messages text not null,
	chat_room nvarchar(30) not null,
	username nvarchar(30) not null
);