# frozen_string_literal: true

# app/models/employee.rb
class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Assosiated model
  belongs_to :department, optional: true
  has_many :leaves, dependent: :destroy
  has_many :attendances, dependent: :destroy
  has_many :salaries, dependent: :destroy
  # Add dynamic value in employee db

  enum gender: %i[male female]
  enum martial_status: %i[maried unmaried]

  # Validation

  validates :first_name, :last_name, :father_name, :mother_name, :email,
            :gender, :hire_date, :date_of_birth, :designation, :phone_number, presence: true

  validate :validate_age

  def to_s
    email.to_s
  end

  private

  def validate_age
    return unless date_of_birth.present?

    if date_of_birth > 21.years.ago
      errors.add(:date_of_birth, 'Employee should be over 21 years old.')
    else
      self.age = Time.zone.now.year - date_of_birth.year
    end
  end
end
