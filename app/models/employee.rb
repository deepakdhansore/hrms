class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Assosiated model
     belongs_to :department
     has_many :leaves,  dependent: :destroy
     has_many :attendances , dependent: :destroy
     has_many :salaries, dependent: :destroy
  # Add dynamic value in employee db
     
     enum gender: [ :male, :female ]
     enum martial_status: [:maried ,:unmaried]

  # Validation
 
  validates :first_name,:last_name,:father_name,:mother_name, presence: true
  

end

