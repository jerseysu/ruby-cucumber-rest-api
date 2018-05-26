# ruby-cucumber-rest-api
> 這是一個用中文寫測試案例的練習

## Requirements

- Ruby 2.4.1
- rbenv 1.1.1
- Bundler 1.16.2
- Docker (if you wanna run by docker)

## Installation 

```
# Install Ruby by rbenv
$rbenv install 2.4.1
$rbenv rehash

# Install Bundler 
$ gem install bundler

# Install gem dependencies
$ bundle install
```

## Build Docker Image

```
# Build Docker Image
$ docker build -t ruby-cucumber-rest-api .

# Check Images
$ docker images
```

## Useful Sample:

- By Docker
`docker run -it --name cucumber-test ruby-cucumber-rest-api`

- GET -
`cucumber features/get_api_test.fature`

- PUT -
`cucumber features/put_api_test.fature`


## Documentation:
Blog: [[CUCUMBER] HOW TO WRITE TEST CASES BY CHINESE](https://medium.com/@loverjersey/cucumber-how-to-write-test-cases-by-chinese-27522a00ecab)


## Author

Jersey Su – [@jerseysu](https://twitter.com/jerseysu) 