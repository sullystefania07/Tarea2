class CreateMyScaffolds < ActiveRecord::Migration
  def change
    create_table :my_scaffolds do |t|
      t.string :my_string
      t.integer :my_integer
      t.datetime :my_datetime
      t.boolean :my_boolean

      t.timestamps null: false
    end
  end
end
