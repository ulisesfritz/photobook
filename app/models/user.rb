class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # new method to get the fullname of the user.
  def name
  firstname + ' ' + lastname
  end
  # Establish the relationship between models.
  has_many :posts
end
