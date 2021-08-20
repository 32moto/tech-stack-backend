echo "exec ridgepole -c config/database.yml -f db/ridgepole.rb --apply -E development"
bundle exec ridgepole -c config/database.yml -f db/ridgepole.rb --apply -E development
echo "exec ridgepole -c config/database.yml -f db/ridgepole.rb --apply -E test"
bundle exec ridgepole -c config/database.yml -f db/ridgepole.rb --apply -E test
echo "exec annotate --models"
bundle exec annotate --models