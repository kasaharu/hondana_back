class CreateBookracks < ActiveRecord::Migration
  def change
    create_table :bookracks do |t|
      t.string :name, null: false

      t.timestamps
    end

    add_index :bookracks, [:name], unique: true
  end
end
