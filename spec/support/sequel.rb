require 'panoply'

Sequel.extension :migration
Sequel::Migrator.run(Panoply.database.db, "db/migrations")
