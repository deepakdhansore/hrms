# frozen_string_literal: true

# app/models/attendance.rb
class Attendance < ApplicationRecord
  belongs_to :employee

  validates :time_in, :time_out, presence: true
  validates :date, presence: true, uniqueness: { scope: :employee_id }
  before_save :count_total_hour

  def self.listing(_attendance)
    order(date: :desc)
  end

  private

  def count_total_hour
    return unless total_hour.blank?

    return unless time_in.present? && time_out.present?

    total_hour = (time_out - time_in)
    self.total_hour = Time.at(total_hour)
    self.total_hour = self.total_hour.strftime('%H:%M')
  end
end
