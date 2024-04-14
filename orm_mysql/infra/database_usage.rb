# Require da classe que criamos
require_relative 'infra/database'

# Conectar ao ambiente de desenvolvimento (dev)
client = Infra::Database.configure(:dev)

# Realizar consultas, etc.
results = client.query("SELECT * FROM sua_tabela")

# Iterar sobre os resultados
results.each do |row|
  puts row.inspect
end

# Fechar a conexão
client.close
