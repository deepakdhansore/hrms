# frozen_string_literal: true

require 'rails_helper'
require 'shoulda-matchers'
RSpec.describe Employee do
  describe 'Validations' do
    context 'check presence validation' do
      %i[first_name last_name father_name mother_name email gender hire_date date_of_birth
         designation phone_number].each do |field|
        it { is_expected.to validate_presence_of(field) }
      end
    end
  end

  describe '#validate_age' do
    it 'should calculate and return age of employee' do
      return unless date_of_birth.present?

      if date_of_birth > 21.years.ago
        errors.add(:date_of_birth, 'Employee should be over 21 years old.')
      else
        self.age = Time.zone.now.year - date_of_birth.year
      end
    end
    end
end
