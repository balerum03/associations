class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :body
      t.datetime :date
      t.datetime :datetime

      t.timestamps
    end
  end
end
