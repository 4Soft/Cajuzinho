class Federation < ActiveRecord::Base
	has_many :JuniorEnterprises
	validates :formal_name, presence: true,
					   	length: {minimum: 5}

end
