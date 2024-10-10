class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :user, null: false
      t.string :nickname, null: false
      t.text :introduction
      t.string :blogurl
      t.timestamps
    end
  end
end
