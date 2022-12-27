
require 'rails_helper'
RSpec.describe Admin::EmployeesController, type: :controller do
  before(:each) do
    @dept = FactoryBot.create(:department)
    @admin = AdminUser.find_or_create_by(email: 'admin@example.com')
    @admin.password = "password"
    @admin.save
    sign_in @admin 
  end
  
    let(:employee) {FactoryBot.create(:employee, department_id: @dept.id)}

    context "get employees" do
      it "index request" do
        get :index
        expect(response).to have_http_status(200)
      end
    end  

    context "show employee" do
      it "show request" do
        get :show,  params: {id: employee.id }
        expect(response).to have_http_status(200)
      end
    end
    context "create employee " do
      it "create request" do
        post :create, params: { employee:{
          first_name: "john", 
    last_name: "doe" ,
    father_name: "father of john", 
    mother_name: "motherof john" ,
    email: "#{Faker::Internet.user_name}@customdomain.com",
    password: "kjdgakjsd",
    gender: "male" ,
    hire_date:  "12-01-2022", 
    date_of_birth: "04-04-2000", 
    designation: "developer",
    phone_number: "8793476545",
    department_id: @dept.id }
        }
        expect(response).to have_http_status(302)
        
      end
    end
    

    context "edit employee " do
      it "edit request" do
        get :edit, params: {id: employee.id}
        expect(response).to have_http_status(200)
      end
    end

    describe "update employee " do
      it "update request" do
        put :update, params: { employee:{
          first_name: "john", 
    last_name: "doe edit" ,
    father_name: "father of john edit", 
    mother_name: "motherof john" ,
    email: "#{Faker::Internet.user_name}@customdomain.com",
    password: "kjdgakjsd",
    gender: "male" ,
    hire_date:  "12-01-2022", 
    date_of_birth: "04-04-2000", 
    designation: "developer",
    phone_number: "8793476545",
    department_id: @dept.id }, id: employee.id
        }
        expect(response).to have_http_status(302)     
      end
    end

    context "destroy employee" do
      it "delete request" do
        delete :destroy, params: { id: employee.id }
        expect(response).to have_http_status(302)
      end
    end
  

end
