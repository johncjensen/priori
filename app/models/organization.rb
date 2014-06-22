class Organization

  base_uri "http://api.crunchbase.com/v/2/organization"
  default_params output: :json
  format :json

  @api_key = Rails.application.secrets.crunchbase_key
  
  attr_accessor :name, :short_description, :primary_image

  def initialize(name, short_description, primary_image)
    self.name = name
    self.short_description = short_description
    self.primary_image = primary_image
  end

  def self.find(organization_permalink)
    response = get("/#{organization_permalink}?user_key=#{@api_key}")

    if response.success?
      self.new(response["name"], response["short_description"], response["primary_image"])
    else
      raise response.response
    end
    
  end
end
