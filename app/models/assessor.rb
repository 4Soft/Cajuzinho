class Assessor < ActiveRecord::Base
	belongs_to :Federation

	validates :role, inclusion: { in: ["Presidente executivo", "Vice-Presidente", "Diretor Administrativo", "Diretor de Comunicação e Marketing", "Diretor de Desenvolvimento", "Presidente do Conselho deliberativo", "Outro"] }
	has_one :user, as: :role, dependent: :destroy
	accepts_nested_attributes_for :user
end
