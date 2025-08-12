class CreateAvailabilities < ActiveRecord::Migration[8.0]
  def change
    create_table :availabilities do |t|
      t.references :app, null: false, foreign_key: true
      t.references :contentable, polymorphic: true, null: false, index: true
      t.string :market

      t.timestamps

      t.index :market
    end
  end
end
