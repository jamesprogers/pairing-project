class Pairs < ActiveRecord::Migration
  def change
    create_table :pairs do |t|
      t.references :challenge, null: false, foreign_key: true
      t.references :time_slot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
