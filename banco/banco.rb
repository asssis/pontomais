require 'active_record'

# ActiveRecord::Base.logger = Logger.new(STDERR)
# ActiveRecord::Base.colorize_logging = false

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "banco/db.sqlite3",
    pool: 40
)
