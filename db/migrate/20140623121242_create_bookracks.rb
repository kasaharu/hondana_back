class CreateBookracks < ActiveRecord::Migration
  def change
    create_table :bookracks do |t|
      t.string :name

      t.timestamps
    end
  end
end
