class CreateConfections < ActiveRecord::Migration
  def change
    create_table :confections do |t|
      t.string :name
      t.text :code

      t.timestamps
    end
  end
end
