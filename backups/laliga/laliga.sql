use master
go
drop database if exists laliga
go
create database laliga
go
use laliga
go
create table Equipos(
id int IDENTITY(1,1) PRIMARY key,
nombre varchar(100),
PresupuestoAnual decimal(18,2)
)

create table Jugadores(
id int IDENTITY(1,1) PRIMARY key,
nombre varchar(100),
SueldoAnual decimal(18,2)
)
alter table jugadores add dorsal int
alter table jugadores add idEquipo int
alter table jugadores add constraint fkequipo FOREIGN key (idEquipo) REFERENCES equipos(id)



create table Partidos (
    id int IDENTITY(1,1) PRIMARY key,
    fechaPartido datetime,
    idEquipoLocal int,
    idEquipoVisitante int,
    MarcadorLocal int,
    MarcadorVisitante int,
    CONSTRAINT fkeq2 FOREIGN KEY (idEquipoLocal) REFERENCES equipos(id) ,
    CONSTRAINT fkeq3 FOREIGN KEY (idEquipoVisitante) REFERENCES equipos(id) ,
)

create table Clasificacion
(
idEquipo int  PRIMARY Key,
nombre varchar(100),
puntos int,
CONSTRAINT fkeq4 FOREIGN KEY (idEquipo) REFERENCES equipos(id) ,
)

insert into equipos (nombre) values ('Almeria')
insert into equipos (nombre) values ('Athletic Club')
insert into equipos (nombre) values ('Atlético Madrid')
insert into equipos (nombre) values ('Barcelona')
insert into equipos (nombre) values ('Betis')
insert into equipos (nombre) values ('Cádiz')
insert into equipos (nombre) values ('Celta Vigo')
insert into equipos (nombre) values ('Elche')
insert into equipos (nombre) values ('Espanyol')
insert into equipos (nombre) values ('Getafe')
insert into equipos (nombre) values ('Girona')
insert into equipos (nombre) values ('Mallorca')
insert into equipos (nombre) values ('Osasuna')
insert into equipos (nombre) values ('Rayo Vallecano')
insert into equipos (nombre) values ('Real Madrid')
insert into equipos (nombre) values ('Real Sociedad')
insert into equipos (nombre) values ('Sevilla')
insert into equipos (nombre) values ('Valencia')
insert into equipos (nombre) values ('Valladolid')
insert into equipos (nombre) values ('Villarreal')



INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Rhona Sutton',2,'8904212'),
  ('Lance Nelson',21,'8521408'),
  ('Tobias Rose',13,'3927177'),
  ('Grady Koch',12,'9915006'),
  ('Rafael Fry',6,'4293328'),
  ('Barbara Horn',9,'5571911'),
  ('Bree Cameron',5,'356417'),
  ('Mikayla Kaufman',4,'8502597'),
  ('Felicia Medina',23,'5317272'),
  ('Myra Sanchez',6,'2853573');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Nigel Baxter',19,'945358'),
  ('Madison Solomon',21,'7082498'),
  ('Orson Ayers',14,'1615930'),
  ('Louis Gallagher',8,'9138862'),
  ('Colorado Ochoa',10,'3276352'),
  ('Rogan Carrillo',25,'7867254'),
  ('Athena Stone',15,'898712'),
  ('Bradley Bradford',17,'4755987'),
  ('Yardley Becker',8,'5730219'),
  ('Burke Mccormick',30,'129758');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Diana Rodriquez',19,'164024'),
  ('Amelia Mclean',2,'3332327'),
  ('Hall Pearson',1,'1694471'),
  ('Paula Howard',23,'3190249'),
  ('Xenos Morrow',13,'9279097'),
  ('Evelyn Patton',22,'8594543'),
  ('Mechelle Lowe',9,'6456577'),
  ('Davis Rasmussen',20,'3976727'),
  ('Kevin Roy',4,'6010477'),
  ('Cassandra Finley',28,'4420656');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Cheyenne Stuart',22,'3513810'),
  ('Dieter Daniels',13,'1750440'),
  ('Quyn Berry',11,'1394222'),
  ('Ivory Mejia',19,'8789935'),
  ('Francesca Carlson',16,'8176607'),
  ('Caesar Zimmerman',13,'6322089'),
  ('Jelani Gilmore',21,'3875443'),
  ('Joseph Hansen',4,'2145587'),
  ('Destiny Glenn',22,'3172780'),
  ('Zephr Vega',29,'5122466');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Marny Blackwell',7,'1498368'),
  ('Mark Mcdowell',8,'4881913'),
  ('Nevada Small',25,'1756825'),
  ('Cooper Bender',10,'6612233'),
  ('Hope Clemons',25,'9896651'),
  ('Kylan Ward',15,'4948175'),
  ('Iona Raymond',16,'5311521'),
  ('Abigail Mcgowan',9,'4730582'),
  ('Graiden David',7,'6054747'),
  ('Madison Joseph',22,'4176042');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Lavinia May',26,'1676979'),
  ('Blake Roman',24,'4579711'),
  ('Malik Hoover',28,'9355836'),
  ('Ray Kerr',6,'4090000'),
  ('Ella Mack',26,'6702440'),
  ('Herman Stewart',28,'915560'),
  ('Nichole Tran',28,'1498343'),
  ('Ariel Levy',15,'2123263'),
  ('Abraham Owen',5,'1076815'),
  ('Alyssa Sykes',8,'1613475');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Leila Wong',18,'9980097'),
  ('Wesley Scott',22,'1632825'),
  ('Octavius Roman',25,'373750'),
  ('Reese Hutchinson',20,'1405067'),
  ('Lane Flores',6,'3495243'),
  ('Callum Frazier',1,'3344939'),
  ('Quin Ross',4,'9861522'),
  ('Lacey Wiley',15,'175693'),
  ('Otto Shaffer',7,'9866809'),
  ('Noelani Walker',28,'8886882');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Uriel Peterson',11,'3092892'),
  ('Amy Mendez',27,'1468729'),
  ('Althea Key',25,'4264296'),
  ('Isabella Boyle',13,'8882189'),
  ('Selma Hale',2,'6694428'),
  ('Adena Gomez',25,'3831895'),
  ('Silas Reilly',28,'9577375'),
  ('Fuller Gutierrez',13,'4810832'),
  ('Lael Blackwell',7,'4582955'),
  ('Randall Powers',5,'5990652');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Hedda Reid',20,'7703846'),
  ('Adam Nguyen',5,'908449'),
  ('Nasim Bowen',29,'3942505'),
  ('Piper Mathews',17,'6339283'),
  ('Curran Wallace',11,'3493403'),
  ('Herman Bullock',27,'277028'),
  ('Matthew Mejia',2,'7210475'),
  ('Salvador Conley',26,'6789360'),
  ('Elton Robertson',3,'736562'),
  ('Penelope Hardy',10,'5470477');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Indigo Hobbs',10,'644012'),
  ('Serina Reynolds',7,'8680615'),
  ('Hadley Garza',15,'6651536'),
  ('Alea Phillips',23,'3255067'),
  ('Rebekah Irwin',15,'8709893'),
  ('Brett Vega',4,'3848913'),
  ('Mallory Ballard',24,'4286526'),
  ('Madeson Hyde',7,'9222907'),
  ('Donna Albert',23,'5494154'),
  ('Paul Ross',18,'9356718');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Fleur Whitehead',12,'4817097'),
  ('Howard Moran',26,'9355118'),
  ('Shaine Floyd',1,'2965377'),
  ('Jasper Hodges',8,'8369013'),
  ('Vivien Barlow',20,'3987033'),
  ('Barry Patrick',12,'5027374'),
  ('Aimee Wilkerson',10,'1998975'),
  ('Ainsley Hamilton',7,'2120919'),
  ('Charles Bradley',6,'8557567'),
  ('Lester Mcleod',2,'6258399');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Hoyt Mullins',12,'1685192'),
  ('Joseph Madden',8,'6972834'),
  ('Gemma Erickson',13,'5854818'),
  ('Leah Gibbs',6,'2659980'),
  ('Matthew Coleman',21,'6991346'),
  ('Brianna Hicks',17,'1142958'),
  ('Yvette Mendez',18,'280699'),
  ('Fuller Mccullough',23,'9683438'),
  ('Rigel Harding',19,'9051413'),
  ('Ryan Jennings',26,'4079886');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Dustin Wright',2,'5158807'),
  ('Amela Acosta',24,'3133197'),
  ('Chiquita Horn',25,'2266902'),
  ('Hoyt Ellison',24,'2450211'),
  ('Dennis Booker',21,'594103'),
  ('Alexandra Waller',27,'2741178'),
  ('Reagan Mckinney',1,'2297910'),
  ('Orson Moon',16,'6198503'),
  ('Ori Bates',10,'2467332'),
  ('David Huber',17,'4291589');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Kelly Garza',16,'3302606'),
  ('Justine Hatfield',23,'5464941'),
  ('Fulton Perkins',22,'4138534'),
  ('Jael Goff',22,'539930'),
  ('Ariana Boone',10,'5632568'),
  ('Karly Irwin',8,'148286'),
  ('Brian Peterson',5,'3900313'),
  ('Kennan Douglas',19,'4438630'),
  ('Patrick Perry',22,'4214989'),
  ('Isaac Barlow',1,'878799');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Phyllis Barrett',21,'1084442'),
  ('Alma Sparks',30,'2600127'),
  ('Anne David',27,'429295'),
  ('Boris Simmons',24,'9593166'),
  ('Jordan Swanson',19,'5946626'),
  ('Tanek Buchanan',27,'8231770'),
  ('Amber Wilkins',26,'7041612'),
  ('Benedict Simmons',28,'5988140'),
  ('Alika Maxwell',14,'9423408'),
  ('Fay Mcconnell',12,'8713274');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Callum Cervantes',15,'1495661'),
  ('Hope Sanford',19,'7459422'),
  ('Hope Cannon',30,'1813696'),
  ('Baker Rogers',10,'8614615'),
  ('Forrest Schultz',15,'9947438'),
  ('Melvin Guy',1,'5519381'),
  ('Axel Winters',27,'6103943'),
  ('Preston Rosales',1,'1963088'),
  ('Claire Richards',30,'3278067'),
  ('Ishmael Fleming',29,'8117230');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Jemima Cervantes',22,'952051'),
  ('Alan Dalton',8,'281815'),
  ('Quinn Brown',4,'8561840'),
  ('Alfreda Woods',14,'1252918'),
  ('Zelenia Foster',23,'8428415'),
  ('Raja Malone',14,'4430773'),
  ('Autumn Saunders',21,'4473028'),
  ('Jorden Smith',29,'5897199'),
  ('Isadora Craig',3,'8495496'),
  ('Donna Jenkins',12,'4256095');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Kelsey Stein',21,'2249259'),
  ('Myles Hays',16,'4920483'),
  ('Kiara Shields',23,'2761467'),
  ('Gail Saunders',10,'3382675'),
  ('Malachi Bullock',15,'4508461'),
  ('Maxine Wilson',2,'8634779'),
  ('Rae Glenn',6,'8544788'),
  ('Macey Ford',18,'1551167'),
  ('Joel Strickland',24,'6620498'),
  ('Thomas Lee',25,'7202488');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Alisa Powers',21,'3362887'),
  ('Xaviera Jimenez',18,'3396500'),
  ('Preston Doyle',28,'1812955'),
  ('Kuame Austin',19,'3837104'),
  ('Nissim Knowles',9,'7117631'),
  ('Brent Pierce',27,'1858675'),
  ('Sage Kline',20,'9617266'),
  ('Simon Francis',8,'5479336'),
  ('Kadeem Watts',14,'3439566'),
  ('Katelyn Mckenzie',2,'8310717');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Otto Cooper',11,'3867377'),
  ('Kelsey Gonzalez',10,'188464'),
  ('Upton Pierce',3,'2599998'),
  ('Alexander Bright',14,'8729154'),
  ('Jeremy Moran',6,'194122'),
  ('Cora Sanders',26,'9641015'),
  ('Maisie Horton',8,'5074102'),
  ('Luke Soto',13,'9376060'),
  ('Halee Vincent',13,'6051966'),
  ('Rebecca Parsons',10,'7464261');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Angela Hoffman',23,'6499292'),
  ('Chaney Spears',26,'3787560'),
  ('Anastasia Kim',7,'1234414'),
  ('Andrew Rocha',5,'6973095'),
  ('Raya Morse',18,'3784221'),
  ('Branden Clayton',10,'9344368'),
  ('Basil Hawkins',16,'5370006'),
  ('Zachary Lara',26,'706217'),
  ('Yasir Wilkins',6,'236064'),
  ('Merritt Williams',26,'5147398');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Jason Conner',27,'1733268'),
  ('Janna Pennington',21,'5363208'),
  ('Marny Wagner',29,'8793270'),
  ('Julian Snyder',12,'9332950'),
  ('Leila Massey',23,'663433'),
  ('Rhona Hodges',24,'1812073'),
  ('Naida Goodwin',5,'4107417'),
  ('Stephanie Ramirez',6,'7647003'),
  ('Callum Beck',7,'6441990'),
  ('Kai Bowen',13,'5432371');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Evelyn Roberson',23,'6210660'),
  ('Rhoda Mcclure',10,'7547742'),
  ('Sandra Hoover',24,'963834'),
  ('Zenaida Wiggins',23,'8245325'),
  ('Cameron Dominguez',22,'3004868'),
  ('Armand Harvey',17,'9155283'),
  ('Ciaran Cervantes',25,'1733457'),
  ('Alexander Haynes',22,'8150723'),
  ('Nissim Floyd',15,'7863199'),
  ('Darrel Mclean',5,'8159543');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Elton Gardner',17,'9020958'),
  ('Dominic Herrera',5,'3678305'),
  ('Adena Cherry',28,'5183626'),
  ('Yvette Johnston',29,'864114'),
  ('Thor Guzman',27,'7531177'),
  ('Griffith Sears',3,'5993913'),
  ('Dale Phillips',15,'8392644'),
  ('Berk Hopper',2,'507790'),
  ('Robin Davenport',1,'8653012'),
  ('Alden Rosario',26,'3347777');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Sara Roy',5,'5822718'),
  ('Skyler Owens',13,'3223917'),
  ('Lisandra Bradford',22,'7180030'),
  ('Rylee Bright',29,'5748761'),
  ('Ian Hays',8,'207140'),
  ('Demetrius Madden',21,'8067411'),
  ('Adena Kennedy',14,'6942071'),
  ('Ursula Burks',3,'4162508'),
  ('Moses Waller',16,'774452'),
  ('Garrison Wilder',15,'8665180');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Abra Vaughan',20,'201202'),
  ('Carly Potts',19,'9913063'),
  ('Robert Bradshaw',4,'1710132'),
  ('Jolie Vincent',17,'8334902'),
  ('Kareem Logan',13,'2303935'),
  ('Jenette Mclaughlin',24,'3882618'),
  ('Melvin Cortez',13,'3749599'),
  ('Audra Johns',11,'8525519'),
  ('Hamilton Boyle',21,'6771269'),
  ('Cassandra Burnett',17,'1417775');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Wendy Rosales',10,'291067'),
  ('Armand Barnett',13,'3759268'),
  ('Delilah Levine',27,'2336868'),
  ('Lucian Frazier',18,'7755202'),
  ('Serina Roberts',7,'3596176'),
  ('Dana Mathews',27,'4547714'),
  ('Cameron Lynch',16,'2770636'),
  ('Caleb Mayer',13,'6896537'),
  ('Phyllis Jimenez',21,'4438541'),
  ('Melinda Robertson',20,'9489936');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('MacKensie Mosley',12,'7137780'),
  ('Zenia Dudley',17,'5178847'),
  ('Thane Carlson',17,'322882'),
  ('Tana Hopper',8,'8625027'),
  ('Igor Carver',10,'3239260'),
  ('Abdul Puckett',21,'944665'),
  ('Joan Ellis',18,'8762390'),
  ('Madonna Petty',9,'2481469'),
  ('Dylan Stephenson',11,'7658702'),
  ('Octavia Dudley',14,'8208880');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('George Lynch',29,'8996705'),
  ('Emmanuel Murray',13,'9178756'),
  ('Maile Fuller',27,'2003693'),
  ('Geoffrey Powers',29,'2564935'),
  ('Chancellor Holmes',6,'6857917'),
  ('Peter Summers',7,'6888272'),
  ('Thaddeus Barrera',28,'6897285'),
  ('Susan Waller',14,'154828'),
  ('Vivian Andrews',9,'541086'),
  ('Marny Woodward',14,'8743913');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Isabelle Floyd',23,'3351090'),
  ('Naomi Miles',9,'3051152'),
  ('Abigail Mccarthy',28,'1635151'),
  ('Brynne Calderon',13,'1388295'),
  ('Brady Dawson',10,'5711197'),
  ('Jelani Dixon',18,'9834073'),
  ('Fleur May',8,'2963069'),
  ('Tanek Duke',12,'2096807'),
  ('Kermit Beach',14,'7232651'),
  ('Yoshi Johns',4,'9146846');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Shea Murray',14,'3273049'),
  ('Zelenia Barnett',18,'1565167'),
  ('Tallulah Byers',10,'7815584'),
  ('Mari Tran',6,'5563707'),
  ('Cherokee Morris',27,'202824'),
  ('Phelan Mcguire',15,'6871289'),
  ('Francis Mullins',24,'1793798'),
  ('Cassidy Fowler',18,'3261800'),
  ('Jonas Branch',20,'3496855'),
  ('Marsden Hutchinson',16,'9266312');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Cherokee Weiss',25,'4178499'),
  ('Yardley Donovan',5,'5459611'),
  ('Lyle Gillespie',19,'9844243'),
  ('Kim Baxter',12,'5000652'),
  ('Vladimir Gonzalez',1,'8938487'),
  ('Ria Hebert',18,'140868'),
  ('Guinevere Vega',27,'2127471'),
  ('Indigo Morris',9,'1216818'),
  ('Eleanor French',11,'4744401'),
  ('Clinton Walters',5,'4257539');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Rhoda Parsons',20,'953718'),
  ('Regina Navarro',12,'2642998'),
  ('Indira Crawford',10,'1048973'),
  ('Karleigh Burnett',14,'1069680'),
  ('Benedict Gomez',12,'7101670'),
  ('Denton Bradshaw',10,'6823171'),
  ('Steven Huff',15,'4730004'),
  ('Kennan Yates',19,'1161949'),
  ('Libby Spence',18,'5466889'),
  ('Otto Smith',26,'2826992');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Hedwig Waters',23,'4362903'),
  ('Bree Waters',19,'3379274'),
  ('Malachi Wilson',30,'6434846'),
  ('Priscilla Hess',28,'792056'),
  ('May Jacobs',20,'8836259'),
  ('Calvin White',16,'9470963'),
  ('Madeson Barry',19,'9428707'),
  ('Hadley Alvarado',23,'6993980'),
  ('Athena Humphrey',2,'5528923'),
  ('Mari Horn',4,'4058564');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Tad Landry',15,'3569765'),
  ('Harper Talley',27,'355819'),
  ('Samantha Boyle',8,'8161793'),
  ('Jonah Nelson',29,'5762278'),
  ('Jasper Tanner',21,'513642'),
  ('Kaye Wolfe',28,'5277956'),
  ('Ginger Rocha',8,'4436354'),
  ('Alea Hoffman',15,'9003426'),
  ('Justine Perry',8,'5283335'),
  ('Alexis Gibson',11,'3570007');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Olga Bauer',5,'2347925'),
  ('Dante Parrish',12,'8641871'),
  ('Alec Snow',16,'6627365'),
  ('Lillian Cooley',5,'3697503'),
  ('Jonah Kim',14,'6572282'),
  ('Deanna Skinner',11,'7907968'),
  ('Daquan Stout',29,'3795332'),
  ('Stacy Castaneda',30,'2702129'),
  ('Callum Nelson',14,'1084475'),
  ('Octavia Mosley',24,'8633207');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Hannah Crane',15,'3966948'),
  ('Britanney Watson',6,'790303'),
  ('Allen Marshall',6,'5079816'),
  ('Barry Herman',21,'5861836'),
  ('Aristotle Kline',5,'3245224'),
  ('Cailin Silva',17,'6703032'),
  ('Lawrence Holloway',26,'4990331'),
  ('Marcia Richards',13,'9418328'),
  ('Veronica Melendez',15,'9169923'),
  ('Yoshio Frederick',9,'1415740');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Geoffrey Adkins',16,'772510'),
  ('Hiram Barton',16,'7732718'),
  ('Alyssa Stevens',17,'3014745'),
  ('Shad Pearson',14,'3748001'),
  ('Marsden Moran',4,'3877249'),
  ('Cassidy Meadows',12,'5649097'),
  ('Raya Johnston',1,'638203'),
  ('Rooney Santos',7,'3652778'),
  ('Sonia Tran',21,'9840666'),
  ('Troy Walton',26,'1744029');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Cooper Oneil',21,'8023011'),
  ('Hakeem King',21,'1813213'),
  ('Ivory Flowers',20,'706923'),
  ('Dylan Franks',16,'5876039'),
  ('Edward Clark',18,'6823203'),
  ('Shelly Daugherty',23,'6506238'),
  ('Hector Dean',24,'3953646'),
  ('Kellie Fowler',12,'7832263'),
  ('Sharon Sanders',6,'5418158'),
  ('MacKensie Baxter',2,'5038957');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Charde Langley',13,'967232'),
  ('Nathan Sanchez',12,'485702'),
  ('William Todd',18,'5330162'),
  ('Violet Reeves',28,'3780344'),
  ('Dillon Bradley',28,'280573'),
  ('Baxter Gallagher',29,'4214286'),
  ('Arsenio Davidson',20,'908361'),
  ('Colorado Bolton',21,'5794497'),
  ('Noelle Pennington',11,'4248808'),
  ('Ciara Young',20,'7344270');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Zeph White',23,'5327058'),
  ('Jordan Shelton',5,'2070295'),
  ('Eric Hubbard',21,'3285966'),
  ('Isabelle Singleton',10,'5868072'),
  ('Noel William',5,'9094749'),
  ('Tallulah Cox',26,'116479'),
  ('Cassidy Mcclain',22,'8880160'),
  ('Regina Callahan',11,'1765364'),
  ('Berk Massey',22,'9738325'),
  ('Quamar Benton',29,'3248280');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Lana Pollard',7,'5645481'),
  ('Joshua Clayton',11,'3509632'),
  ('Kamal Greer',13,'7871307'),
  ('Upton Francis',18,'8781449'),
  ('Aileen Whitehead',1,'5142145'),
  ('Jonah Woods',27,'9234205'),
  ('Sacha Le',3,'9349461'),
  ('Kuame Walls',29,'4606062'),
  ('Elmo Riddle',24,'1116080'),
  ('Cadman Hodges',3,'5911007');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Kermit Weiss',7,'3892951'),
  ('Flavia Spence',8,'1273162'),
  ('Halla Middleton',3,'6693690'),
  ('Zia Barrera',6,'8482947'),
  ('Kelly Bullock',5,'4734221'),
  ('Rajah Alford',3,'3722984'),
  ('Lawrence Parks',14,'1124030'),
  ('Kirby Wong',16,'7051441'),
  ('Jael Rodgers',4,'7234976'),
  ('Jackson Ross',10,'4820336');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Chancellor Pollard',8,'4384255'),
  ('Orlando Davis',11,'9522159'),
  ('Richard Pennington',23,'9812196'),
  ('Leigh Bentley',25,'1617553'),
  ('Gillian Newton',10,'9813153'),
  ('Yetta Bishop',5,'4002500'),
  ('Rowan Blake',10,'9416578'),
  ('Liberty Daniels',2,'2624484'),
  ('Ashton Fisher',10,'2068415'),
  ('Kirk Gonzales',5,'7358978');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Davis Norris',22,'9826940'),
  ('Kylan Merrill',13,'6681263'),
  ('Robert Mendez',6,'5043925'),
  ('Chastity Turner',3,'1081690'),
  ('Hilda Conley',22,'7827113'),
  ('Debra Chen',7,'8417749'),
  ('Cooper Browning',8,'6442722'),
  ('Adria Lowery',8,'4432853'),
  ('Chelsea Hubbard',24,'6086310'),
  ('Fay Oliver',29,'1731833');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Natalie Moore',13,'6753757'),
  ('Wynne Lindsey',3,'8505735'),
  ('Melvin Whitaker',21,'8623600'),
  ('Hedwig Klein',30,'2051282'),
  ('Kelsey Buckley',24,'5925239'),
  ('Cassandra Velasquez',2,'3315083'),
  ('Luke Puckett',14,'5300380'),
  ('Lionel Medina',21,'8946667'),
  ('Fitzgerald Gibbs',26,'7290692'),
  ('Margaret Mclean',8,'6694710');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Ciaran Sykes',7,'9222604'),
  ('Donna Hampton',5,'3677163'),
  ('Beau Weeks',1,'6603718'),
  ('Jaden Lambert',18,'3093489'),
  ('Ferdinand Benjamin',28,'6234045'),
  ('Edward Patton',4,'7650665'),
  ('Nehru Juarez',13,'2498512'),
  ('Burke Randall',6,'6568359'),
  ('Graham Lindsay',19,'4701433'),
  ('Raven Horton',9,'759232');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Kelly Leon',10,'7210852'),
  ('Nash Bullock',29,'3803830'),
  ('Carlos Mccullough',7,'8807134'),
  ('Montana Boyer',6,'936032'),
  ('Mallory Allen',25,'8325328'),
  ('Maxine Cain',10,'8339214'),
  ('Edward Davidson',25,'6212912'),
  ('Mara Noble',28,'2408623'),
  ('Guy Dale',5,'1669550'),
  ('Lars Hansen',28,'8602463');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Alden Powell',24,'8157431'),
  ('Wade Maynard',11,'3233123'),
  ('Piper Fernandez',19,'101426'),
  ('Dale Sloan',29,'1217556'),
  ('Julian Foreman',18,'4493036'),
  ('Kristen Frederick',5,'1124476'),
  ('Cooper Brooks',20,'2361354'),
  ('Cooper Harrell',5,'8076203'),
  ('Micah Camacho',16,'6741389'),
  ('Lacey Shelton',18,'314382');
INSERT INTO [Jugadores] (nombre,dorsal,SueldoAnual)
VALUES
  ('Kirk Garrett',27,'3264741'),
  ('Leroy Monroe',19,'7364310'),
  ('Kyra Harmon',6,'4151722'),
  ('Morgan Francis',3,'5095695'),
  ('Barbara Carson',28,'7693037'),
  ('Mallory Garza',25,'3587467'),
  ('Blossom Meyers',12,'7688153'),
  ('Ryan Vance',26,'2099630'),
  ('Yvonne Melendez',6,'5379506'),
  ('Kristen Montoya',14,'4367195');


update jugadores set idequipo =(id%20) +1
update jugadores set dorsal = (id/20)+1 
update equipos set PresupuestoAnual =
 (select sum(sueldoAnual) from jugadores where idequipo=e.id )
from equipos e