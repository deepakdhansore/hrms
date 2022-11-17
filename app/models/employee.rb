class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  belongs_to :department
  
  has_many :emp_leaves
 
  has_many :emp_attendances

  has_many :emp_salaries
 
  enum gender: [ :male, :female ]
  enum martial_status: [:maried ,:unmaried]
  enum department_id: [:start,:hr, :it, :account, :quality_assurance,:admin,:marketing,:research_and_development]

  
end
