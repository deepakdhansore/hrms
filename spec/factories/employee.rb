FactoryBot.define do
  factory :employee, class: Employee do
    first_name { "john" }
    last_name  { "doe" }
    father_name { "father of john" }
    mother_name {"motherof john" }
    email  {"#{Faker::Internet.user_name}@customdomain.com"}
    password { "kjdgakjsd"}
    gender { "male" }
    hire_date { "12-01-2022" }
    date_of_birth {"04-04-2000" }
    designation {"developer"}
    phone_number {"8793476545"}
  end
end