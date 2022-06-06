class CreateLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :line_items do |t|
      t.belongs_to :cart, null: false, foreign_key: true
      t.references :instrument, foreign_key: true

      t.timestamps
    end
  end
end