# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bookrack, :class => 'Bookrack' do
    sequence(:name) { |i| "bookrack#{i}" }
  end
end
