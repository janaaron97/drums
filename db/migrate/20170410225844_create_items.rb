class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.text :image
      t.text :text
      t.timestamps
    end
  end
end
