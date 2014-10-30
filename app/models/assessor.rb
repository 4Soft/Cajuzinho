class Assessor < ActiveRecord::Base

	validates :role, inclusion: { in: ["Presidente executivo", "Vice-Presidente", "Diretor Administrativo", "Diretor de Comunicação e Marketing", "Diretor de Desenvolvimento", "Presidente do Conselho deliberativo", "Outro"] }
	
end
