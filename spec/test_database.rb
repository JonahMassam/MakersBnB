def reset_test_database
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec('TRUNCATE TABLE spaces')
end

def seed_test_database
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec("INSERT INTO spaces (name, users_ref) values ('Space1', 0);")
  connection.exec("INSERT INTO spaces (name, users_ref) values ('Space2', 0);")
end

def get_test_database_data
  connection = PG.connect(dbname: 'makersbnb_test')
  result = connection.exec('SELECT * FROM spaces')
end