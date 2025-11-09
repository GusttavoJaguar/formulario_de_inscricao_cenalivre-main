json.extract! evento, :id, :nome, :descricao, :local, :data, :link_ingresso, :image, :created_at, :updated_at
json.url evento_url(evento, format: :json)
