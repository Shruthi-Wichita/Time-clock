class CreateTimeSheets < ActiveRecord::Migration[5.0]
  def change
    create_table :time_sheets do |t|
      t.datetime :clock_in
      t.datetime :clock_out
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
