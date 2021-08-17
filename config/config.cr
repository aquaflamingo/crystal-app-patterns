# A basic configuration class for maintaining
# custom configurations for your program
class Config
  property database_url : String
  property application_url : String = ""
  property concurrency : String = ""

  # A private sensible default to setup the
  # configurations with.
  private def self.default_concurrency
    "1"
  end

  def self.build(&block : (Config) -> _) : Config
    c = Config.new
    c.concurrency = default_concurrency

    block.call(c)

    return c
  end
end
