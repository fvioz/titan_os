class CreateApps < ActiveRecord::Migration[8.0]
  def change
    create_table :apps do |t|
      t.string :name

      t.timestamps

      t.index :name, unique: true
    end
  end
end
