# frozen_string_literal: true

class Department < ApplicationRecord
  has_many :employee
end
