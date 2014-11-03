class Ej < ActiveRecord::Base
	belongs_to :Federation
	validates :formal_name,
  :presence => {:message => "Campo vazio inválido" }
	validates :cnpj,
  :presence => {:message => "Campo vazio inválido" }

	has_one :user, as: :role, dependent: :destroy
	accepts_nested_attributes_for :user
end