class Inscricao < ApplicationRecord
    validates_presence_of :nome
    validates_presence_of :alcunha
    validates_presence_of :regiao
    validates_presence_of :contato
    validates_presence_of :data_nascimento
end
