class Organization
  include HTTParty

  ## Shortned it so you aren't locked in with "organization" singular or products... etc

  base_uri "api.crunchbase.com/v/2/"
  default_params output: :json
  format :json

  @api_key = Rails.application.secrets.crunchbase_key


  # not using this at the moment

  # attr_accessor :name, :short_description, :primary_image
  # def initialize(name, short_description, primary_image)
  #   self.name = name
  #   self.short_description = short_description
  #   self.primary_image = primary_image
  # end

  def self.find(organization_permalink)
    response = get("/organization/#{organization_permalink}?user_key=#{@api_key}")
  end


  ## temp homepage until you paginate through the API store them into your DB
  ## from docs https://developer.crunchbase.com/docs
  # http://api.crunchbase.com/v/2/organizations?user_key=<user-key>&order=updated_at%20desc

  def self.everything
    response = get("/organizations?user_key=#{@api_key}&order=updated_at%20desc")
  end
end
