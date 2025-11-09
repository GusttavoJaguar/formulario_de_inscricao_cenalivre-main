class Post < ApplicationRecord
    validates_presence_of :titulo
    validates_presence_of :conteudo
    has_one_attached :image
    has_many :comments, dependent: :destroy
    validates :titulo, presence: true
end
