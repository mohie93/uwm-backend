class User
  include ActiveModel::Model
  include ActiveModel::Validations
  include ActiveModel::Validations::Callbacks
  
  attr_accessor :first_name, :last_name, :password, :email, :image_url
end