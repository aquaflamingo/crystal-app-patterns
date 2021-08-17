# Configuration
**Intent**: Construction central configuration object for use throughout the application.

**Usage**:
Create a `Config` class containing your properties. 

(optional) Add a YAML markup definition such that configurations can be explicitly declared in `.yml` file;


```ruby
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
```
