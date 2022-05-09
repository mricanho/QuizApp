FactoryBot.define do
  factory :quiz do
    name { "MyString" }
  end

  factory(:user) do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end
end
