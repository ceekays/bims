class PgName < ActiveRecord::Migration
  def self.up
  add_column :page_contents, :pg_name, :text
  end

  def self.down
   remove_column :page_contents, :pg_name
  end
end
