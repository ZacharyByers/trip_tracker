class RemoveNameFromAddress < ActiveRecord::Migration[5.1]
  def change
    remove_column :addresses, :name, :string
  end
end
