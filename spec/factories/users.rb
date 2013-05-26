FactoryGirl.define do
  factory :user do
    name 'Test User'
    email 'example@example.com'
    password 'gabriel'
    password_confirmation 'gabriel'
    # required if the Devise Confirmable module is used
    confirmed_at Time.now
  end
end