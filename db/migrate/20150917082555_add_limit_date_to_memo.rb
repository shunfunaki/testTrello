class AddLimitDateToMemo < ActiveRecord::Migration
  def change
    add_column :memos, :LimitDate, :datetime
  end
end
