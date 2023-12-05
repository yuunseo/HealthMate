CREATE TABLE IF NOT EXISTS gym(
g_ownerId VARCHAR(12) NOT NULL,
g_id VARCHAR(12) NOT NULL,
g_name VARCHAR(30),
g_info TEXT,
g_time VARCHAR(20),
g_address TEXT,
g_fileName TEXT,
PRIMARY KEY (g_id),
FOREIGN KEY (g_ownerId) references user(u_id)
)default CHARSET=utf8;

