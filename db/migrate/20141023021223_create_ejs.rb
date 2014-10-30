class CreateEjs < ActiveRecord::Migration
  def change
    create_table :ejs do |t|
      t.string :formal_name
      t.string :cnpj
      t.string :site

      t.timestamps
    end
  end
end
