class CreateConfectionTags < ActiveRecord::Migration
  def change
    create_table :confections_tags do |t|
      t.references :confection, index: true
      t.references :tag, index: true

      t.timestamps
    end
  end
end
