class CreateDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :documents do |t|
      t.string :category
      t.string :hash
      t.references :carrier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
