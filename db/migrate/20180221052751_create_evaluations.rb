class CreateEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluations do |t|
      t.datetime :date
      t.references :src_user_id, foreign_key: true
      t.references :dst_user_id, foreign_key: true
      t.integer :rate

      t.timestamps
    end
  end
end
