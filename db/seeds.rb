# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  :email    => "hoge@test.com",
  :password => "hogehoge"
)

3.times do |i|
  Bookrack.create(
    :name    => "bookrack_#{i}",
    :user_id => "1"
  )
end

5.times do |i|
  Book.create(
    :name        => "book_#{i}",
    :author      => "author_#{i}",
    :category    => "category_#{i}",
    :memo        => "hogehogehoge_#{i}",
    :bookrack_id => "1"
  )
end

15.times do |i|
  Book.create(
    :name        => "book_2_#{i}",
    :author      => "author_#{i}",
    :category    => "category_#{i}",
    :memo        => "hogehogehoge_#{i}",
    :bookrack_id => "2"
  )
end
