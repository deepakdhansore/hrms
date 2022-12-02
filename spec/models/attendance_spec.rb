# frozen_string_literal: true

# spec/models/attendance_spec.erb
require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe Attendance, type: :model do
  describe 'Association' do
    context 'check belongs_to association' do
      it { should belong_to(:employee) }
    end
  end

  describe 'Validations' do
    context 'validation for presence' do
      %i[date time_in time_out].each do |field|
        it { is_expected.to validate_presence_of(field) }
      end
    end

    context 'validation for uniqueness' do
      it { is_expected.to validate_uniqueness_of(:date).scoped_to(:employee_id) }
    end
  end
end
