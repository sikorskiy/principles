class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_days, dependent: :destroy
  has_many :days, through: :user_days

  has_many :user_weeks, dependent: :destroy
  has_many :weeks, through: :user_weeks

  has_many :daily_tasks
  has_many :success_notes
  has_many :fail_notes
  has_many :rules
end
