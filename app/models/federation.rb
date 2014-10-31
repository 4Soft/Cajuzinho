class Federation < ActiveRecord::Base
	has_many :Ej
	validates :formal_name, presence: true,
					   	length: {minimum: 5}

end
