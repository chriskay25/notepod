class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.references  :user, index: true, foreign_key: true
      t.references  :podcast, index: true, foreign_key: true

      t.timestamps  null: false
    end
  end
end

