class DropNoticeSelectionTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :notice_selections
  end
end
