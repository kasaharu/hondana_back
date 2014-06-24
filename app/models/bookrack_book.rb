class BookrackBook < ActiveRecord::Base
  belongs_to :bookrack
  belongs_to :book
end
