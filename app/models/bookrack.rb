class Bookrack < ActiveRecord::Base
  belongs_to :user

  has_many :bookrack_books
  has_many :bookracks, through: :bookrack_books
end
