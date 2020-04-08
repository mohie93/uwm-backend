class Widget
  include ActiveModel::Model
  include ActiveModel::Validations
  include ActiveModel::Validations::Callbacks
  
  attr_accessor :name, :description, :kind
end