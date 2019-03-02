sudo docker-compose build
cd backend
heroku container:push web --app salty-peak-30475
heroku container:release web --app salty-peak-30475
