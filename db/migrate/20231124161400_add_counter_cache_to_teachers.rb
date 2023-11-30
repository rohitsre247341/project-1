class AddCounterCacheToTeachers < ActiveRecord::Migration[7.1]
  def change
    add_column :teachers, :students_count, :integer, default: 0
  end
end
