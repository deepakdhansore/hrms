# frozen_string_literal: true

# spec/models/attendances_spec.erb
require 'rails_helper'
require 'shoulda-matchers'
RSpec.describe Attendance, type: :model do
  describe 'Validations' do
    %i[date time_in time_out].each do |field|
      it { is_expected.to validate_presence_of(field) }
    end
    it { is_expected.to validate_uniqueness_of(:date).scoped_to(:employee_id) }
  end
end
