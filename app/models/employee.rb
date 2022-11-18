class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
 
  has_many :leaves
 
  has_many :attendances

  has_many :salaries
 
  enum gender: [ :male, :female ]
  enum martial_status: [:maried ,:unmaried]

  
end
