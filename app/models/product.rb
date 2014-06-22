class Product
  
  base_uri "http://api.crunchbase.com/v/2"
  default_params output: :json
  format :json

  @api_key = Rails.application.secrets.crunchbase_key

end
