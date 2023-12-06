CREATE TABLE IF NOT EXISTS user(
u_id VARCHAR(12) NOT NULL,
u_name VARCHAR(20),
u_phoneNumber VARCHAR(20),
u_age INTEGER,
u_sex VARCHAR(10),
u_password VARCHAR(20),
u_registerGym BOOLEAN,
PRIMARY KEY (u_id)
)default CHARSET=utf8;

