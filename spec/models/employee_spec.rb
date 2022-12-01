# frozen_string_literal: true

# spec/models/employee_spec.erb
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

  describe 'Assosiations' do
    context 'check has many assosiations' do
      %i[attendances leaves salaries].each do |models|
        it 'has many #{models}' do
          relation = described_class.reflect_on_association(models)
          expect(relation.macro).to eq :has_many
        end
      end
    end
    
    context 'check belongs_to association' do
      it { should belong_to(:department) }
    end
  
  end
end
