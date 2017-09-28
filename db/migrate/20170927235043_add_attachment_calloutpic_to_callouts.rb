class AddAttachmentCalloutpicToCallouts < ActiveRecord::Migration[5.1]
  def self.up
    change_table :callouts do |t|
      t.attachment :calloutpic
    end
  end

  def self.down
    remove_attachment :callouts, :calloutpic
  end
end
