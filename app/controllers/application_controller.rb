class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def welcome
    @@last_id ||= 0
    @@last_id += 1
    @user = OpenStruct.new(id: @@last_id, email: Faker::Internet.email, name: Faker::Name.name)
  end
end
