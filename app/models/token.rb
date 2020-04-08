class Token
  include ActiveModel::Model
  include ActiveModel::Validations
  include ActiveModel::Validations::Callbacks
  
  def self.create(options)
    params = TokenHelper.create_params(options)
    response = HttpService.post(params)
    return response
  end

  def self.refresh(options)
    params = TokenHelper.refresh_params(options)
    response = HttpService.post(params)
    return response
  end

  def self.revoke(options)
    params = TokenHelper.revoke_params(options)
    response = HttpService.post(params)
    return response
  end

end