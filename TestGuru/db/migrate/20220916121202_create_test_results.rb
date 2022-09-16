class CreateTestResults < ActiveRecord::Migration[6.1]
  def change
    create_table :test_results do |t|
      t.string :status, null: false, default: 'not passed'
      t.references :user, null: false, foreign_key: true
      t.references :test, null: false, foreign_key: true

      t.timestamps
    end
  end
end
