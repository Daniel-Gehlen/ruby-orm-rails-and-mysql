require_relative 'infra/database'
require_relative 'models/client'
require_relative 'models/supplier'

module ORM
  module Client
    extend self

    def self.create(name, phone, cpf)
      Models::Client.create(name, phone, cpf)
    end

    def self.all
      Models::Client.all
    end
  end

  module Supplier
    extend self

    def self.create(name, phone, cnpj, address)
      Models::Supplier.create(name, phone, cnpj, address)
    end

    def self.all
      Models::Supplier.all
    end
  end
end
