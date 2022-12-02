# frozen_string_literal: true

# app/models/salary.rb
class Salary < ApplicationRecord
  belongs_to :employee

  validates :fromdate, :todate, :salary, presence: true

  def self.listing(_salary)
    order(created_at: :desc)
  end
end
