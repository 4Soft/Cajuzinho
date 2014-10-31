class Federation < ActiveRecord::Base
	has_many :JuniorEnterprises
	validates :formal_name, presence: true,
					   	length: {minimum: 5}
	has_one :user, as: :role, dependent: :destroy
	accepts_nested_attributes_for :user

end
