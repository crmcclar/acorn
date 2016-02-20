class ChangeAttachments < ActiveRecord::Migration
  def up
    drop_table :attachments
    add_attachment :containers, :photo
  end
  def down
    remove_attachment :containers, :photo
    create_table :attachments do |t|
      t.attachment :file
      t.string :type, null: false
    end
  end
end
