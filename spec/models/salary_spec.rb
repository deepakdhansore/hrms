# frozen_string_literal: true

# spec/models/salary_spec.erb
require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe Salary, type: :model do
  describe 'Association' do
    context 'check belongs_to association' do
      it { should belong_to(:employee) }
    end
  end

  describe 'Validations' do
    context 'validation for presence' do
      %i[fromdate todate salary].each do |field|
        it { is_expected.to validate_presence_of(field) }
      end
    end
  end
end
