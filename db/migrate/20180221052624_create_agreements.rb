class CreateAgreements < ActiveRecord::Migration[5.1]
  def change
    create_table :agreements do |t|
      t.datetime :date
      t.references :evaluation_id, foreign_key: true
      t.references :user_id, foreign_key: true
      t.integer :rate

      t.timestamps
    end
  end
end
