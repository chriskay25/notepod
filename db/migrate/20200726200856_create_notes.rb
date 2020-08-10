class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.text :content
      t.references  :user, index: true, foreign_key: true
      t.references  :episode, index: true, foreign_key: true

      t.timestamps  null: false
    end
  end
end
