class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name,  null: false
      t.string :author
      t.string :category
      t.text :memo

      t.timestamps
    end

    add_index :books, [:name], unique: true
  end
end
