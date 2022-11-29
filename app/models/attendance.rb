# frozen_string_literal: true

class Attendance < ApplicationRecord
  before_save :count_total_hour

  belongs_to :employee

  # validation
  validates :date, :time_in, :time_out, presence: true
  validates :date, uniqueness: { scope: :employee_id }
  # call back

  def self.listing(_attendance)
    order(date: :desc)
  end

  private

  def count_total_hour
    return unless total_hour.blank?

    total_hour = (time_out - time_in)
    self.total_hour = Time.at(total_hour)
    self.total_hour = self.total_hour.strftime('%H:%M')
  end
end
# Employee.first.attendances.create!(date:Date.parse("2022-11-24"),time_in:Time.zone.parse("9:00 AM"),time_out:Time.zone.parse("7:00 PM"))
