class CreateUsers < ActiveRecord::Migration
  def self.up
=begin 
create_table :users do |t|
     t.column :username,         :string
     #t.column :user_id,
     t.column :password,         :string
     t.column :salt,             :string

    end
=end
  end

  def self.down
#   drop_table :users
  end
end
