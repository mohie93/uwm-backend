class UserHelper
  def self.get_url_and_header(method, token)
    case method
    when :create
      return {
        url: "https://showoff-rails-react-production.herokuapp.com/api/v1/users",
        headers: {content_type: :json, accept: :json}
      }
    when :update
      return ""
    when :index
      return ""
    when :show_self
      return ""
    when :show
      return ""
    when :change_email
      return ""
    when :check_email
      return ""
    when :reset_password
      return ""
    end
  end
end