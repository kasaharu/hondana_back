# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book, :class => 'Book' do
    sequence(:name)     { |i| "book#{i}" }
    sequence(:author)   { |i| "author#{i}" }
    sequence(:category) { |i| "category#{i}" }
    sequence(:memo)     { |i| "memo#{i}" }
  end
end
