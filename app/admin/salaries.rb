# frozen_string_literal: true

ActiveAdmin.register Salary do
  controller do
    def create
      @salary = Salary.create(salary_params)

      employee = @salary.employee_id
      salary = @salary.salary
      deduction_amt = (salary / 30) * Employee.find(employee).leaves.all_leaves
      send_sal = salary - deduction_amt
      @salary.update(salary: send_sal)
      redirect_to admin_salaries_path
    end

    def salary_params
      params.require(:salary).permit(:fromdate, :todate, :salary, :employee_id)
    end
  end

  index do
    selectable_column

    column :employee
    column :fromdate
    column :todate
    column :salary

    actions
  end

  filter :employee
  filter :fromdate

  form do |f|
    f.inputs 'Salary' do
      f.input :employee
      f.input :fromdate, as: :datepicker
      f.input :todate, as: :datepicker
      f.input :salary
    end
    f.actions
  end
end
