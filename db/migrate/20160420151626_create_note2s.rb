class CreateNote2s < ActiveRecord::Migration[5.0]
  def change
    create_table :note2s do |t|
      t.string :title
      t.text :note

      t.timestamps
    end
  end
end
