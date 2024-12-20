class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.jsonb :raw_data, default: {}
      t.references :carrier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
