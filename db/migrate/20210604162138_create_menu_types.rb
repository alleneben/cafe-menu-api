class CreateMenuTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
