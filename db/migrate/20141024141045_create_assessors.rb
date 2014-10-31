class CreateAssessors < ActiveRecord::Migration
  def change
    create_table :assessors do |t|
      t.string :role

      t.timestamps
    end
  end
end
