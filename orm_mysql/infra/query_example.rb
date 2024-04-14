module Infra
  class QueryExample
    def self.run_example
      # Conectar ao ambiente de desenvolvimento (dev) e executar uma consulta segura
      results = Database.execute(:dev, "SELECT * FROM sua_tabela WHERE coluna = ?", valor)

      # Iterar sobre os resultados
      results.each do |row|
        puts row.inspect
      end
    end
  end
end
