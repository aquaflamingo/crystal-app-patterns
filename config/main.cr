require "./app.cr"

# Build a configuration using the builder method and set the
# various desired configurations
conf = Config.build do |c|
  c.database_url = "postgres://your_db_host@your_db_port"
  c.application_url = "https://my-cool-crystal-app.com"
end

# Instantiate your app
app = App.new

# Invoke startup command and pass your config
app.start(conf)
