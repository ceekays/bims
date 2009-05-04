require File.dirname(__FILE__) + '/../spec_helper'

describe "The", User do
   
   # create a new user and its salt
   before(:all) do
      @u = User.new
      @u.create_new_salt     
   end
   
   it "should exist" do
      @u.should_not be_nil
     
   end
   
   it "should not have more than one person" do
      @u.person = Person.new
      @u.person.class.should equal Person
   end
   
   it "should have salt that starts with an object id" do   
      @u.salt.should be_starts_with(@u.object_id.to_s)
   end

   it "should have salt which includes 0." do
      @u.salt.should include "0\."
   end
   
   it "should have salt with length >= 4" do
      @u.salt.length.should  >= 4
   end         
end

