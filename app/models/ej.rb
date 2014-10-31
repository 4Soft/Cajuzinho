class Ej < ActiveRecord::Base
	validates :formal_name,
		:presence => {:message => "Nome Formal não pode ser vazio" }
	validates :cnpj,
		:presence => {:message => "CNPJ não pode ser vazio" }
end