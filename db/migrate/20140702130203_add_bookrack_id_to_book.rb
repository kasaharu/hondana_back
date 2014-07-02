class AddBookrackIdToBook < ActiveRecord::Migration
  def change
    add_reference :books, :bookrack, index: true
  end
end
