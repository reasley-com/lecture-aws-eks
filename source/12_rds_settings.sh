# new user
createuser -d -U eksdbadmin -P -h <Your DB endpoint> mywork

# new database
createdb -U mywork -h <Your DB endpoint> -E UTF8 myworkdb

# database connect
psql -U mywork -h <Your DB endpoint> myworkdb