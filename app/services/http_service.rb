require "rest-client"

class HttpService

  def self.execute(method, options)
    puts "\n#{options}"
    response = RestClient::Request.execute(method: method, url: options[:url], payload: options[:payload].to_json, headers: options[:headers])
    return {
      code: response.code,
      body: response.body
    }
  end

  def self.post(options)
    return execute(:post, options)
  end

  def self.get(options)
    return execute(:get, options)
  end

  def self.put(options)
    return execute(:put, options)
  end

  def self.delete(options)
    return execute(:delete, options)
  end
  
end