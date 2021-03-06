class MakeUsernameCaseInsensitve < ActiveRecord::Migration
  TARGETS = [
    [:poj_submissions, :user],
    [:aoj_submissions, :user_id],
  ]

  def up
    TARGETS.each do |table_name, column_name|
      remove_index table_name, column_name

      execute "CREATE INDEX #{quote_column_name(index_name(table_name, column: column_name))} ON #{quote_table_name(table_name)} (lower(#{quote_column_name(column_name)}))"
    end
  end

  def down
    TARGETS.each do |table_name, column_name|
      remove_index table_name, column_name
      add_index table_name, column_name
    end
  end
end
