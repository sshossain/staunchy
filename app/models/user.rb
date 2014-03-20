class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :presence => true

  def name
  	if last_name.present?
			self.first_name + " " + self.last_name
  	else
  		self.first_name
  	end
  end       
end
