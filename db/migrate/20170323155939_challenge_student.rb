class ChallengeStudent < ActiveRecord::Migration
  def change
    create_join_table :challenges, :student do |t|
      t.references :student, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
