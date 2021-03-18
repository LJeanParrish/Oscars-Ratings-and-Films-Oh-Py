select * from award_categories

select * from films

select * from nominees

select * from academy_awards

select aa.year, aa.category_id, ac.category_name, ac.subcategory_name, aa.winner,
	   aa.film_id, fl.film_name, 
	   aa.nominee_id, nm.first_name, nm.last_name
  from academy_awards aa join award_categories ac on aa.category_id = ac.category_id
  						 left join nominees nm on aa.nominee_id = nm.nominee_id
  	   					 left join films fl on aa.film_id = fl.film_id 
					 


insert into academy_awards 
values('2014', 5, 2, null, False, '')

insert into award_categories
values (6, 'COSTUME DESIGN', '', '')

insert into films 
values(2, 'How to Train Your Dragon 2', null)

insert into nominees 
values (5, 'Meryl', 'Streep', null, '')
 