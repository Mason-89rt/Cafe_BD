create table post(
	 id INTEGER NOT NULL PRIMARY KEY,
    name VARCHAR(50)  NOT NULL
);
create table user(
id INTEGER NOT NULL PRIMARY KEY,
login VARCHAR(50),
password VARCHAR(50)
);
create table staff(
id INTEGER PRIMARY KEY,
name VARCHAR (50),
surname VARCHAR(50),
post_id INTEGER,
user_id INTEGER,
foreign key (post_id) references post(id),
foreign key (user_id) references user(id)
);
create table menu(
id INTEGER NOT NULL PRIMARY KEY,
dish_id integer,
type_menu VARCHAR(255),
foreign key (dish_id) references dish(id)
);
create table dish(
id INTEGER NOT NULL PRIMARY KEY,
name_dish VARCHAR (255),
constituent_dish VARCHAR(255),
price_dish INTEGER,
time_cook_dish VARCHAR(255)
);
create table client(
id INTEGER NOT NULL PRIMARY KEY,
name VARCHAR(255),
surname VARCHAR(255),
location_id INTEGER,
foreign key (location_id) references location(id)
);
create table event(
id INTEGER NOT NULL PRIMARY KEY,
total_price INTEGER,
total_client integer,
time_event datetime,
menu_id INTEGER,
client_id integer,
foreign key (menu_id) references menu(id),
foreign key (client_id) references client(id)
);
create table deliveries(
id INTEGER NOT NULL PRIMARY KEY,
time_deliveries time
);
create table location(
id INTEGER NOT NULL PRIMARY KEY,
address VARCHAR(255),
deliveries_id integer,
foreign key (deliveries_id) references deliveries(id)
);
create table product_presence(
id INTEGER NOT NULL PRIMARY KEY,
dish_id integer,
storehouse_id integer,
foreign key (dish_id) references dish(id),
foreign key (storehouse_id) references storehouse(id)
);
create table suppliers(
id INTEGER NOT NULL PRIMARY KEY,
data_deliveries date,
time_deliveries time,
product VARCHAR(255)
);
create table storehouse(
id INTEGER NOT NULL PRIMARY KEY,
product VARCHAR(255),
count integer,
suppliers_id integer,
foreign key (suppliers_id) references suppliers(id)
);

insert into user values(1,'maxim','admin');
	insert into user values(2,'andrew','staff');
		insert into user values(3,'ivan','admin');
			insert into user values(4,'georg','admin');
				insert into user values(5,'serg','admin');


insert into post values(1,"technician-engineer");
	insert into post values(2,"waiter");
		insert into post values(3,"manager");
			insert into post values(4,"accountant");
				insert into post values(5,"director");

insert into staff values(1,'Maxim','Barinov',1,1);
	insert into staff values(2,'Andrew','Robertson',2,2);
		insert into staff values(3,'Ivan','Mostovoy',3,3);
			insert into staff values(4,'Georgiy','Hronov',4,4);
				insert into staff values(5,'Sergey','Bondarenko',5,5);

insert into menu values(1,1,'Dinner');
insert into menu values(2,2,'Breakfast');
insert into menu values(3,3,'La Carte');
insert into menu values(4,4,'Static');
insert into menu values(5,5,'Cycle');

insert into dish values(1,'Spaghetti',
	'Olive oil, spaghetti, parmesan cheese, tomatoes, onion, butter, eggs and parsley',450,'25 minute');
insert into dish values(2,'Lasagne',
	'ground beef, sausage, ricotta cheese, mozzarella cheese, and vegetables',550,'30-40 minute');
insert into dish values(3,'Risotto',
	'Rice, broth, butter, onion, white wine, parmesan cheese',700,'15 minute');
insert into dish values(4,'Aranchini',
	'Rice:Arborio rice,Onion,Parmigiano Reggiano,Butter,Vegetable stock ,Extra virgin olive oil EVOO Filling:Ground beef ,Peas ,Tomato paste ,Carrot ,Celery stick ,Onion ,Fresh basil,Butter ,Fresh mozzarella, Shredded dry mozzarella ,extra virgin olive oil EVOO,Salt & pepper ,Sicilian Arancini',650, '30 minute');
insert into dish values(5,'Ragù alla Bolognese',
	'Beef, Pancetta, Pork , tomatoes, Milk And Cream, Wine, Herbs And Spices,Olive Oil,Pasta',800,'2-3 hourse');


insert into client values(1,'Lorenzo','Pellegrini',1);
	insert into client values(2,'Lorenzo','Insigne',3);
		insert into client values(3,'Federico','Chiesa',2);
			insert into client values(4,'Domenico','Berardi',5);
				insert into client values(5,'Davide','Frattesi',4);

insert into product_presence values(1,1,1);
	insert into product_presence values(2,2,2);		
		insert into product_presence values(3,3,3);		
			insert into product_presence values(4,4,4);		
				insert into product_presence values(5,5,5);	

insert into event values(1,25000,15,'20-09-2024 17:30:00',1,2);
	insert into event values(2,30000,20,'10-10-2024 12:30:00',2,3);	
		insert into event values(3,10000,5,'24-05-2025 19:10:00',2,4);
			insert into event values(4,100000,40,'24-07-2024 11:45:00',4,5);
				insert into event values(5,70000,50,'21-06-2023 18:50:00',3,1);

insert into deliveries values(1,'10:00:00');
	insert into deliveries values(2,'05:55:00');	
		insert into deliveries values(3,'14:23:00');	
			insert into deliveries values(4,'11:12:00');	
				insert into deliveries values(5,'12:30:00');

insert into location values(1,'street 35',1);
	insert into location values(2,'street 31',1);
		insert into location values(3,'House of Mr.Riad Al-Araji',1);
			insert into location values(4,'Fils and a Half Complex',1);
				insert into location values(5,'Stadium Bernabeau',1);

insert into suppliers values(1,10-12-2024,'10:25:00','beef,vegetables,juice');
	insert into suppliers values(2,10-12-2024,'17:00:00','fish,Butter,olive oil,vegetables,juice');
		insert into suppliers values(3,10-11-2024,'09:40:00','beef,vegetables,juice,cheese');
			insert into suppliers values(4,05-06-2024,'15:10:00','beef,vegetables,juice,beer,wine');
				insert into suppliers values(5,12-10-2024,'12:24:00','beef,fish,vegetables,juice,wine');	

insert into storehouse values(1,'carrot',1000,1);	
	insert into storehouse values(2,'beef',150,3);	
		insert into storehouse values(3,'onion',360,4);	
			insert into storehouse values(4,'cheese',200,5);	
				insert into storehouse values(5,'fish',50,2);												


