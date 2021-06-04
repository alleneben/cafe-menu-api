class CreateMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.float :price
      t.string :img_name
      t.integer :typeid

      t.timestamps
    end
  end
end
