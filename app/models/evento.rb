class Evento < ApplicationRecord
    validates_presence_of :nome, :descricao, :local, :data
end
