class Bookrack < ActiveRecord::Base
  belongs_to :user

  has_many :bookrack_books
  has_many :books, through: :bookrack_books
end
