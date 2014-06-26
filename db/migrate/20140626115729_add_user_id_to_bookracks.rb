class AddUserIdToBookracks < ActiveRecord::Migration
  def change
    add_reference :bookracks, :user, index: true
  end
end
