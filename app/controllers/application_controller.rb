class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def welcome
    @@user ||= OpenStruct.new(
      id: DateTime.now.to_i,
      email: Faker::Internet.email, 
      name: Faker::Name.name,
      created_at: DateTime.now,
      mood: %w(happy sad confused angry annoyed irritated whatever N/A).sample,
      abandoned_carts: (0..99).to_a.sample,
      company: {
        id: DateTime.now.to_i,
        name: Faker::Company.name,
        created_at: DateTime.now,
      }
    )
    @user = @@user
  end
end
