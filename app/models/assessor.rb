class Assessor < ActiveRecord::Base

	validates :role, inclusion: { in: ["Presidente", "Diretor Financeiro", "Diretor de RH", "Diretor de Marketing", "Outro"] }
	
end
