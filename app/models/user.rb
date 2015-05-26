class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :role, inclusion: { in: %w(Admin User),
    message: "%{value} is not accepted as a role" }
  validates :brief, length: { maximum: 500,
    too_long: "%{count} characters is the maximum allowed" }
end
