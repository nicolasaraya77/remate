class CreateNoticeSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :notice_selections do |t|
      t.text :auction

      t.timestamps
    end
  end
end
