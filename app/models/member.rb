class Member < ActiveRecord::Base
  belongs_to :EJ

  validates :role, inclusion: { in: ["Presidente", "Vice-Presidente", "Diretor Administrativo", "Diretor de Comunicação e Marketing", "Diretor de Desenvolvimento", "Outro"] }
  has_one :user, as: :role, dependent: :destroy
  accepts_nested_attributes_for :user
end
