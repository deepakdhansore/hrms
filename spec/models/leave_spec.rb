# frozen_string_literal: true

# spec/models/leave_spec.erb
require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe Leave, type: :model do
  
  describe 'Association' do
    context 'check belongs_to association' do
      it { should belong_to(:employee) }
    end
  end

  describe 'Validations' do
    context 'validation for presence' do
        %i[startdate enddate reason].each do |field|
        it { is_expected.to validate_presence_of(field) }
        end
      end
  end


end