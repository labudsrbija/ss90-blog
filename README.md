# README

#STEP#1 
docker-compose run app rails new . --force --database=postgresql --skip-bundle

#STEP#2
docker-compose build

#STEP#3(OPTIONA) if needed to create db
docker-compose run --rm app rake db:create

#STEP#4(OPTIONA) if needed to make migrations
docker-compose run --rm app rake db:migrate

#STEP#5 
docker-compose up

