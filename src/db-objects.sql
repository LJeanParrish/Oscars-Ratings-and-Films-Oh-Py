create table award_categories(
	category_id serial not null primary key,
	category_name varchar(100) not null,
	subcategory_name varchar(100),
	description varchar(200),
	constraint award_categories_uk unique (category_name, subcategory_name)
);
 
create table films(
	film_id serial not null primary key ,
	film_name varchar(100) not null,
	release_date date
);

create table nominees(
	nominee_id serial not null primary key ,
	first_name varchar(100) not null,
	last_name varchar(100),
	date_of_birth date,
	description varchar(100)
);

drop table academy_awards
  
create table academy_awards(
 year varchar(5) not null,
 category_id int not null,
 film_id int, --not null,
 nominee_id int,
 winner boolean default 'N',
 description varchar(100),
 constraint awards_fk1 foreign key(category_id) references award_categories(category_id),
 constraint awards_fk2 foreign key(film_id) references films(film_id),	 
 constraint awards_fk3 foreign key(nominee_id) references nominees(nominee_id)	
);
 