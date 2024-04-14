require_relative '../infra/database'

module Models
  class Client
    def self.create(name, phone, cpf)
      query = "INSERT INTO Clients (name, phone, cpf) VALUES (?, ?, ?)"
      Infra::Database.execute(:dev, query, name, phone, cpf)
    end

    def self.all
      query = "SELECT * FROM Clients"
      Infra::Database.execute(:dev, query)
    end
  end
end
