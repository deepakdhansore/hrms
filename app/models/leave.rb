# frozen_string_literal: true

# app/models/leave.rb
class Leave < ApplicationRecord
  belongs_to :employee
  #validates :startdate, :enddate, :reason, presence: true
  after_validation :count_days
 
  def self.all_leaves
    where(startdate:(Date.today.at_beginning_of_month)..(Date.today.at_end_of_month)).sum(:days) 
  end

  private

  def count_days
    if enddate.present? && startdate.present?
    leave = (enddate.to_date - startdate.to_date).to_i
    self.days = leave
    end
  end

  
  
  


end
