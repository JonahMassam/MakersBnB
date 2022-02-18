class WebsiteObject

  def db_connection()
    if ENV['RACK_ENV'] == 'test'
      PG.connect(dbname: 'makersbnb_test')
    else
      PG.connect(dbname: 'makersbnb')
    end

  end

end