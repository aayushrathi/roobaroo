class AddWalkDateToPins < ActiveRecord::Migration
  def change
    add_column :pins, :walkdate, :datetime
  end
end
