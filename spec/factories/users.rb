FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password' }
    user_is_admin{true}
  end
end
