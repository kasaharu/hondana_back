# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) { |i| "hoge#{i}@gmail.com" }
    sequence(:password) { |i| "hogehoge#{i}" }
  end
end
