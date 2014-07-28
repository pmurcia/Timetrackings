class OtherMigration < ActiveRecord::Migration
  def change
  	add_column :project, :description, :text
  end
end
