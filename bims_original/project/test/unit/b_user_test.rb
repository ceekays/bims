#Commented by Edmond Kachale on April 27, 2009 
#Reason: this 'require' statement does not work. The statement that follows replaces it
#require 'test_helper'

require File.dirname(__FILE__) + '/../test_helper'
#require 'users'

class UserTest < ActiveSupport::TestCase
 fixtures :users
# Replace this with your real tests.
  def test_truth
    assert true
  end
  
  def test_user_count
   #u = User.new
  assert_equal 2, User.count, User.errors.full_messages
end

end
