class Students < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.references :challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
