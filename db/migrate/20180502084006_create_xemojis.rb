class CreateXemojis < ActiveRecord::Migration[5.2]
  def change
    create_table :xemojis do |t|
      t.string :category, :null => false
      t.string :filename, :null => false
      t.string :url, :null => false
      t.text :keywords, array: true, default: []

      t.timestamps
    end

    create_table :users_xemojis, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :xemoji, index: true
    end
  end
end
