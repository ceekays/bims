#Commented by Edmond Kachale on April 27, 2009 
#Reason: this 'require' statement does not work. The statement that follows replaces it
#require 'test_helper'

require File.dirname(__FILE__) + '/../test_helper'

class UserTest < ActiveSupport::TestCase

# Replace this with your real tests.
  def test_truth
    assert true
  end


   #Real test
   def test_invalid_with_empty_attributes
      u = User.new
      assert !u.valid?
      assert u.errors.invalid?(:user_id)
      #assert u.errors.invalid?(:system_id)
      assert u.errors.invalid?(:username)
      #assert u.errors.invalid?(:password)
      #assert u.errors.invalid?(:salt)
   end
=begin   
   def test_blank_password
      u = User.new(:username =>'ceekays', :password => 'try')
#      assert u.valid?
        assert !u.valid?
        assert_equal "Missing password" , u.errors.on(:password)
   end
=end
   def test_username
      ok = %w{ edmond essau edmond}
      id = 1
      pid = 1
      ctr = 1
      ok.each do |name|
         u = User.new(  :system_id => 'admin',
                        :creator => ctr,
                        :date_created => Time.now,
                        :person_id => pid,
                        :username =>name, 
                        :password => 'try')
         pid += 1
         ctr += 1         
                        
         puts "****The name is: #{name}****"
         p '&&& Your name is: ' + u.username
         assert u.valid?, u.errors.full_messages
         
      end
   end
end
