class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :tweets

  validates :first_name , presence: true
  validates :last_name, presence: true
  validates_uniqueness_of :twitter_handle, :presence => true

end
