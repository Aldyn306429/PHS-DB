class Student < ApplicationRecord
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :grade, presence: true
  validates :username, presence: true
  validates :password, presence: true
  validates :short_id, presence: true
  validates :long_id, presence: true
  validates :role, presence: true
  validates :school, presence: true

  def to_param
    short_id
  end
end
