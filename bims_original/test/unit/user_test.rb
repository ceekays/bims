#Commented by Edmond Kachale on April 27, 2009 
#Reason: this 'require' statement does not work. The statement that follows replaces it
#require 'test_helper'

require File.dirname(__FILE__) + '/../test_helper'

class UserTest < ActiveSupport::TestCase

   # Replace this with your real tests.
   def test_truth
      assert true
   end
   
   def test_create_new_salt
      u = User.new
      u.salt = u.object_id.to_s + rand.to_s
        
      #check if the first part of the string strats with the object id
      assert u.salt.starts_with?(u.object_id.to_s)
      assert u.salt =~ /0./
      assert u.salt.length >= 4
      mysalt = u.salt.to_d
      print" #{mysalt} and #{u.salt}"
      assert_equal mysalt.is_a?(String), true, '****salt must be a string***'    
         
   end
end
