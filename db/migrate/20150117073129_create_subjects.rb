class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :photo
      t.text :description
      t.integer :user_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
