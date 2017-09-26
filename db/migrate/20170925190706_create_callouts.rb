class CreateCallouts < ActiveRecord::Migration[5.1]
  def change
    create_table :callouts do |t|
      t.string :name
      t.string :body
      t.string :city
      t.string :tag
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
