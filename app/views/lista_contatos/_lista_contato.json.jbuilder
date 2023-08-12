json.extract! lista_contato, :id, :Primeiro_Nome, :Ultimo_Nome, :Email, :Telefone, :created_at, :updated_at
json.url lista_contato_url(lista_contato, format: :json)
