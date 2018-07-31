class AddGradeToClimbs < ActiveRecord::Migration[5.2]
  def change
    add_column :climbs, :grade, :string
  end
end
