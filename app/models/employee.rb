class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Assosiated model
     has_one :department
     has_many :leaves
     has_many :attendances
     has_many :salaries
  # Add dynamic value in employee db
     
     enum gender: [ :male, :female ]
     enum martial_status: [:maried ,:unmaried]

  # Validation
 
    

end
