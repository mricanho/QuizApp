FactoryBot.define do
  factory :answer do
    question { nil }
    name { 'MyString' }
  end

  factory :question do
    quiz { nil }
    name { 'MyString' }
    question_type { 1 }
    required { false }
  end

  factory :quiz do
    name { 'MyString' }
  end

  factory(:user) do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end
end
