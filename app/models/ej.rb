class Ej < ActiveRecord::Base
	belongs_to :Federation
	validates :formal_name,
		:presence => {:message => "não pode ser vazio" }
	validates :cnpj,
		:presence => {:message => "não pode ser vazio" }

	has_one :user, as: :role, dependent: :destroy
	accepts_nested_attributes_for :user
end