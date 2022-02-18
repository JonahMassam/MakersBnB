require_relative "website_object.rb"

class Space < WebsiteObject

  attr_reader :ids, :names, 

  def initialize(id)

  end

  def list(id)
    connection = db_connection()
    results = connection.exec("SELECT * FROM spaces WHERE users_ref = '#{id}'")
    space_ids = results.field_values("id") 
    space_names = results.field_values("name") # ["space1", "space2", ...]
    space_descriptions = results.field_values("description")
    space_prices = results.field_values("price")
    space_available = results.field_values("available")
    return {
      "ids" => space_ids,
      "names" => space_names,
      "descriptions" => space_descriptions,
      "prices" => space_prices,
      "available" => space_available 
    }

  end


end