module Infra
  class Database
    def self.configure(environment)
      config_file = File.join(File.dirname(__FILE__), '..', 'config', 'database.yml')
      raw_config = File.read(config_file)

      # Adicione um ponto de depuração aqui
      byebug

      erb_config = ERB.new(raw_config).result
      config = YAML.safe_load(erb_config, [Symbol])

      env_config = config[environment.to_s]

      host = env_config['host']
      port = env_config['port']
      username = env_config['user']
      password = env_config['pass']
      database = env_config['database']

      Mysql2::Client.new(
        host: host,
        port: port,
        username: username,
        password: password,
        database: database
      )
    end

    def self.execute(environment, query, *params)
      client = configure(environment)
      statement = client.prepare(query)
      result = statement.execute(*params)
      client.close
      result
    end
  end
end
