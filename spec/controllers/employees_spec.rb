# frozen_string_literal: true

# spec/controllers/employees_spec.rb
RSpec.describe EmployeesController, type: :request do
  it 'assigns all users to @users' do
    get employee_path
    expect(assigns(:employees)).to eq(current_employee)
  end
end
