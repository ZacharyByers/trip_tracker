class AddRelationToTrips < ActiveRecord::Migration[5.1]
  def change
    add_reference :trips, :user, foreign_key: true
  end
end
