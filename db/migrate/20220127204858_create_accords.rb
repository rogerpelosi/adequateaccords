class CreateAccords < ActiveRecord::Migration[6.1]
  def change
    create_table :accords do |t|
      t.string :subject
      t.text :content
      t.datetime :datetime

      t.timestamps
    end
  end
end
