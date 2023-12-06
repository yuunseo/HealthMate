CREATE TABLE IF NOT EXISTS gymProduct(
g_id VARCHAR(12) NOT NULL,
gp_id VARCHAR(12) NOT NULL,
gp_name VARCHAR(30),
gp_period INTEGER,
gp_price INTEGER,
gp_fileName TEXT,
PRIMARY KEY (gp_id),
FOREIGN KEY (g_id) references gym(g_id)
)default CHARSET=utf8;

