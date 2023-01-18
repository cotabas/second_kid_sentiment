class CreateKidVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :kid_votes do |t|
      t.boolean :vote
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
