class AddPaperclip < ActiveRecord::Migration
  def self.up
    add_attachment :subjects, :photo
  end

  def self.down
    remove_attachment :subjects, :photo
  end
end
