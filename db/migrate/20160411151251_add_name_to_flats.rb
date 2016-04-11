class AddNameToFlats < ActiveRecord::Migration
  def change
    add_column :flats, :name, :string
  end
end
