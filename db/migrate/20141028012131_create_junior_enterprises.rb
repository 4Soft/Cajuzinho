class CreateJuniorEnterprises < ActiveRecord::Migration
  def change
    create_table :junior_enterprises do |t|

      t.timestamps
    end
  end
end
