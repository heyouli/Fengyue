FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email
    password "1234567890"
    first_name "Mary5"
    last_name "Maier8"
    admin false
  end

  factory :admin, class: User do
  email
  password "qwertyuiop"
  admin true
  first_name "Admin1"
  last_name "User1"
end
end
