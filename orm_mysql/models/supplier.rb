require_relative '../infra/database'

module Models
  class Supplier
    def self.create(name, phone, cnpj, address)
      query = "INSERT INTO Suppliers (name, phone, cnpj, address) VALUES (?, ?, ?, ?)"
      Infra::Database.execute(:dev, query, name, phone, cnpj, address)
    end

    def self.all
      query = "SELECT * FROM Suppliers"
      Infra::Database.execute(:dev, query)
    end
  end
end
