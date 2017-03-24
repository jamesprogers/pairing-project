class PairStudent < ActiveRecord::Migration
  def change
    create_join_table :pair, :student do |t|
      t.references :student, null: false, foreign_key: true
      t.references :pair, null: false, foreign_key: true

      t.timestamps
    end
  end
end
