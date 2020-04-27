class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate , inclusion: {in: 40..200}

  validates_associated :store

  before_create :set_password

  private
  def set_password
    self.password = [*('a'..'z'),*('0'..'9')].shuffle[0,8].join 
  end
end
