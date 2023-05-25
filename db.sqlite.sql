BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "alocacao" (
	"id"	INTEGER,
	"area"	INTEGER,
	"automovel"	INTEGER,
	"concessionária"	INTEGER,
	"quantidade"	INTEGER
);
CREATE TABLE IF NOT EXISTS "automoveis" (
	"id"	INTEGER,
	"modelo"	TEXT,
	"preço"	TEXT
);
CREATE TABLE IF NOT EXISTS "clientes" (
	"Id"	INTEGER,
	"Nome"	TEXT
);
CREATE TABLE IF NOT EXISTS "concessionarias" (
	"id"	INTEGER,
	"concessionária"	TEXT
);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (1,1,1,1,-3);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (2,2,2,2,0);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (3,4,3,3,4);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (4,7,4,4,6);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (5,8,5,5,4);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (6,9,6,1,0);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (7,10,7,2,0);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (8,1,8,2,0);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (9,2,9,3,0);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (10,4,10,4,6);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (11,7,11,5,3);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (12,8,12,1,9);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (13,9,13,2,8);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (14,10,14,3,4);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (15,1,15,3,0);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (16,2,16,4,0);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (17,4,17,5,8);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (18,7,18,1,4);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (19,8,19,2,10);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (20,9,20,3,10);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (21,10,21,4,7);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (22,1,22,4,0);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (23,2,23,5,0);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (24,4,24,1,4);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (25,7,25,2,3);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (26,8,26,3,3);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (27,9,27,4,10);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (28,10,28,5,4);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (29,1,29,1,0);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (30,2,30,2,3);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (31,4,31,3,4);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (32,7,32,4,2);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (33,8,33,5,3);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (34,9,34,1,4);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (35,10,35,2,3);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (36,1,36,3,2);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (37,2,37,4,2);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (38,4,38,5,3);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (39,7,39,1,2);
INSERT INTO "alocacao" ("id","area","automovel","concessionária","quantidade") VALUES (40,8,40,2,1);
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (1,'Fiat Strada','R$ 43.115,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (2,'Fiat Argo','R$ 47.660,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (3,'Fiat Mobi','R$ 32.102,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (4,'Jeep Compass','R$ 34.950,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (5,'Hyundai HB20','R$ 49.302,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (6,'Jeep Renegade','R$ 36.661,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (7,'Volkswagen T-Cross','R$ 38.182,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (8,'Fiat Toro','R$ 57.733,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (9,'Hyundai Creta','R$ 55.998,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (10,'Chevrolet S10','R$ 51.035,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (11,'Toyota Corolla Cross','R$ 34.544,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (12,'Toyota Hilux','R$ 53.937,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (13,'Toyota Corolla','R$ 55.022,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (14,'Volkswagen Gol','R$ 48.253,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (15,'Honda HR-V','R$ 53.438,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (16,'Renault Kwid','R$ 31.810,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (17,'Volkswagen Nivus','R$ 35.104,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (18,'Hyundai HB20S','R$ 31.855,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (19,'Ford Ranger','R$ 48.927,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (20,'Fiat Uno','R$ 38.111,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (21,'Fiat Cronos','R$ 36.515,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (22,'Citroën C4 Cactus','R$ 53.654,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (23,'Toyota Yaris Hatchback','R$ 55.869,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (24,'Volkswagen Voyage','R$ 30.954,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (25,'Honda Civic','R$ 30.871,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (26,'Volkswagen Saveiro','R$ 32.306,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (27,'Caoa Chery Tiggo 5x','R$ 30.069,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (28,'Volkswagen Virtus','R$ 40.689,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (29,'Fiat Grand Siena','R$ 33.469,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (30,'Caoa Chery Tiggo 8','R$ 48.481,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (31,'Chevrolet Tracker','R$ 30.648,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (32,'Peugeot 208','R$ 46.934,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (33,'Toyota SW4','R$ 54.252,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (34,'Nissan Frontier','R$ 32.596,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (35,'Honda WR-V','R$ 35.139,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (36,'Volkswagen Taos','R$ 47.546,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (37,'Mitsubishi L200','R$ 57.049,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (38,'Renault Oroch','R$ 48.756,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (39,'Toyota Yaris Sedan','R$ 43.077,00');
INSERT INTO "automoveis" ("id","modelo","preço") VALUES (40,'Renault Duster','R$ 52.641,00');
INSERT INTO "clientes" ("Id","Nome") VALUES (1,'Adalberto Martins da Silva');
INSERT INTO "clientes" ("Id","Nome") VALUES (2,'Adan Roger Guimarães Dias');
INSERT INTO "clientes" ("Id","Nome") VALUES (3,'Adão Walter Gomes de Sousa');
INSERT INTO "clientes" ("Id","Nome") VALUES (4,'Adelson Fernandes Sena');
INSERT INTO "clientes" ("Id","Nome") VALUES (5,'Ademir Augusto Simões');
INSERT INTO "clientes" ("Id","Nome") VALUES (6,'Ademir Borges dos Santos');
INSERT INTO "clientes" ("Id","Nome") VALUES (7,'Adilio José da Silva Santos');
INSERT INTO "clientes" ("Id","Nome") VALUES (8,'Adriana Ferreira de Lima Teodoro');
INSERT INTO "clientes" ("Id","Nome") VALUES (9,'Adriano Bezerra Apolinario');
INSERT INTO "clientes" ("Id","Nome") VALUES (10,'Adriano Heleno Basso');
INSERT INTO "clientes" ("Id","Nome") VALUES (11,'Adriano Lourenço do Rego');
INSERT INTO "clientes" ("Id","Nome") VALUES (12,'Adriano Matos Santos');
INSERT INTO "clientes" ("Id","Nome") VALUES (13,'Adriano Pires Caetano');
INSERT INTO "clientes" ("Id","Nome") VALUES (14,'Adriano Prada de Campos');
INSERT INTO "clientes" ("Id","Nome") VALUES (15,'Adriel Alberto dos Santos');
INSERT INTO "clientes" ("Id","Nome") VALUES (16,'Agner Vinicius Marques de Camargo');
INSERT INTO "clientes" ("Id","Nome") VALUES (17,'Agrinaldo Ferreira Soares');
INSERT INTO "clientes" ("Id","Nome") VALUES (18,'Alan Jhonnes Banlian da Silva e Sá');
INSERT INTO "clientes" ("Id","Nome") VALUES (19,'Alberto Ramos Rodrigues');
INSERT INTO "clientes" ("Id","Nome") VALUES (20,'Alcides José Ramos');
INSERT INTO "clientes" ("Id","Nome") VALUES (21,'Aldemir SantAna dos Santos');
INSERT INTO "clientes" ("Id","Nome") VALUES (22,'Aleksandro Marcelo da Silva');
INSERT INTO "clientes" ("Id","Nome") VALUES (23,'Alessandro Martins Silva');
INSERT INTO "clientes" ("Id","Nome") VALUES (24,'Alessandro Sanches');
INSERT INTO "clientes" ("Id","Nome") VALUES (25,'Alex dos Reis de Jesus');
INSERT INTO "clientes" ("Id","Nome") VALUES (26,'Alex Ferreira Soares');
INSERT INTO "clientes" ("Id","Nome") VALUES (27,'Alex Sandro Oliveira');
INSERT INTO "clientes" ("Id","Nome") VALUES (28,'Alex Souza Farias');
INSERT INTO "clientes" ("Id","Nome") VALUES (29,'Alexandra de Lima Silva');
INSERT INTO "clientes" ("Id","Nome") VALUES (30,'Alexandre Clemente da Costa');
INSERT INTO "concessionarias" ("id","concessionária") VALUES (1,'Atena concessionária');
INSERT INTO "concessionarias" ("id","concessionária") VALUES (2,'Demétir concessionária');
INSERT INTO "concessionarias" ("id","concessionária") VALUES (3,'Hera concessionária');
INSERT INTO "concessionarias" ("id","concessionária") VALUES (4,'Estia concessionária');
INSERT INTO "concessionarias" ("id","concessionária") VALUES (5,'Perséfone concessionária');
COMMIT;
