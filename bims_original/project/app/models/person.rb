class Person < ActiveRecord::Base
  set_table_name "person"
  self.primary_key = 'person_id'
  
  has_many :person_names
  has_one :user
 # belongs_to :users
end
