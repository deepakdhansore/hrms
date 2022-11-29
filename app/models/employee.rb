# frozen_string_literal: true

class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Assosiated model
  belongs_to :department
  has_many :leaves, dependent: :destroy
  has_many :attendances, dependent: :destroy
  has_many :salaries, dependent: :destroy
  # Add dynamic value in employee db

  enum gender: %i[male female]
  enum martial_status: %i[maried unmaried]

  # Validation

  validates :first_name, :last_name, :father_name, :mother_name, presence: true

  def say_hello
    'Hello World!'
  end

  def to_s
    email.to_s
  end
end
