# Require the necessary files
require_relative 'infra/database'
require_relative 'models/client'
require_relative 'models/supplier'
require_relative 'orm'

# Example usage:
# Create a client
ORM::Client.create("John Doe", "(123) 456-7890", "12345678901")

# Create a supplier
ORM::Supplier.create("ABC Inc.", "(987) 654-3210", "09876543210987", "123 Main St")

# Fetch all clients
clients = ORM::Client.all
puts "Clients:"
clients.each do |client|
  puts client.inspect
end

# Fetch all suppliers
suppliers = ORM::Supplier.all
puts "Suppliers:"
suppliers.each do |supplier|
  puts supplier.inspect
end
