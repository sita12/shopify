# README
Project Name: Shopify

* Ruby version
  `-v 2.7.0`

* System dependencies
    `docker`
    `docker-compose`

* Configuration

* Installation
  Create `.env` file with respect to `.env.example` and,
  ```bash
    docker-compose build
  ```

* Initial Setup
  - Database creation
		```bash
      docker-compose run web rails db:create && rails db:migrate
		```

* Launch
	```bash
    docker-compose up
	```

* Launch Shell(rails bash )
	```bash
    docker-compose exec web bash
	```
	 or
	```bash
    docker exec -it shopify_web_1 bash 
	```
		(rails command and console can be acessed in usual way from bash)

* Services (job queues, cache servers, search engines, etc.)
    - ActiveJob
    - Resque/Resque Scheduler
    - Mailhog

* Mailhog(View Mails)
    localhost:8025

* in case of error
    - error_type :webpacker issue
		```bash
    	docker-compose run web rails webpacker:install
		```