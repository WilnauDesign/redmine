#!/bin/sh

. /Applications/redmine-3.4.2-2/scripts/setenv.sh
cd /Applications/redmine-3.4.2-2/apps/redmine/htdocs
bin/rake generate_secret_token
bin/rake db:migrate RAILS_ENV="production"

bin/rake redmine:load_default_data RAILS_ENV="production" REDMINE_LANG="en"
          