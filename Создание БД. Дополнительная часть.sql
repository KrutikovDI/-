CREATE TABLE IF NOT EXISTS Worker (
	worker_ID INTEGER PRIMARY KEY,
	name_worekr TEXT,
	name_department TEXT,
	boss_worker_id INTEGER REFERENCES Worker(worker_ID)
);