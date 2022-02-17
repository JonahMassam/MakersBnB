def reset_test_database
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec('TRUNCATE TABLE spaces')
  connection.exec('TRUNCATE TABLE users')
end

def seed_test_database
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec("INSERT INTO users (name) values ('User1');")
  connection.exec("INSERT INTO users (name) values ('User2');")

  result = connection.exec("SELECT id FROM users WHERE name = 'User1';")
  id = result.field_values("id")[0]

  connection.exec("INSERT INTO spaces (name, users_ref, description, price) values ('Space1', #{id.to_i}, 'Bla bla', 100);")
  connection.exec("INSERT INTO spaces (name, users_ref, description, price) values ('Space2', #{id.to_i}, 'Bla2 bla2', 200);")

  
end

def get_test_database_data
  connection = PG.connect(dbname: 'makersbnb_test')
  result = connection.exec('SELECT name FROM spaces')
  result = result.map { |dict| dict["name"] }
end

def get_registered_users
  connection = PG.connect(dbname: 'makersbnb_test')
  result = connection.exec('SELECT name FROM users')
  result = result.map { |hash| hash["name"] }
end