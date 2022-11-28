require 'rails_helper'

RSpec.describe Employee do
   
       
       it "should say 'Hello World' when we call the say_hello method" do 
          hw = Employee.new 
          message = hw.say_hello 
          expect(message).to eq "Hello World!"
       end
       
    end
 