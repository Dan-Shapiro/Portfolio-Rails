class AddSlugToClimbs < ActiveRecord::Migration[5.2]
  def change
    add_column :climbs, :slug, :string
    add_index :climbs, :slug, unique: true
  end
end
