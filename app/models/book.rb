class Book < ActiveRecord::Base
  has_many :bookrack_books
  has_many :bookracks, through: :bookrack_books
end
