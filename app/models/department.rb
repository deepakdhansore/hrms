# frozen_string_literal: true

# app/models/department.rb
class Department < ApplicationRecord
  has_many :employee
end
