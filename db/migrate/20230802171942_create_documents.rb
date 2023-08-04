class CreateDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :documents do |t|
      t.string :filename
      t.string :content
      t.string :url
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
