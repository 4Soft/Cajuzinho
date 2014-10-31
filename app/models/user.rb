class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:username]
  belongs_to :role, polymorphic: true, dependent: :destroy

  def class_name
    self.role.class.to_s
  end

  def isJuniorEnterprise?
  	return class_name == "JuniorEnterprise"
  end
end