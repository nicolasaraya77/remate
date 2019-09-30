class AddDateandHourandWarrantyandNameandfeeToNoticeSelection < ActiveRecord::Migration[5.2]
  def change
    add_column :notice_selections, :date, :date
    add_column :notice_selections, :hour, :time
    add_column :notice_selections, :warranty, :integer
    add_column :notice_selections, :name, :string
    add_column :notice_selections, :fee, :float
  end
end
