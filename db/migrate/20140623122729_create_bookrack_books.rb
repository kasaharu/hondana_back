class CreateBookrackBooks < ActiveRecord::Migration
  def change
    create_table :bookrack_books do |t|
      t.references :bookrack, index: true
      t.references :book, index: true

      t.timestamps
    end
  end
end
