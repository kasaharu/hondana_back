class AddBookrackIdToUser < ActiveRecord::Migration
  def change
    add_reference :users, :bookrack, index: true
  end
end
