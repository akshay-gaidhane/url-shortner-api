# URL-Shortner- API
## Use Cases

- Build a link shortener API using Ruby on Rails. 

Definition: An API that can accept URLs and return shorter URLs that when used, redirect to the actual URL.

# User Stories:

- As a user, I want to be able to create a new shortened link where I provide a url and it is shortened
- As a user, when I click on a shortened link it will redirect me to the real url
- As a user, I can create, through the API, an account using username and password 
- As a user, I can login, through the API, to my account to retrieve an API token which will be used for other requests
- As a user, using the API token, I want to be able to create a new shortened link where I provide a url and it is shortened

## Installation
It requires  `ruby 2.7.0` and `rails 6.1.4`

Install the dependencies and devDependencies and start the server.
```
cd url-shortner-api
rake db:create
rake d:migrate
rails s
```


## Postman Collection

Use postman collection named `URL Shortner.postman_collection.json`

- For creating user use `Sign up api` from collection
- After that You can Login using `Login api` and get token in headers named `Authorization`
- Use `Create Short URL` api for generating short url. The output will contain `short_url` field which will contain shortened url. Copy and paste that link in browser
# URL-Shortner- API
## Use Cases

- Build a link shortener API using Ruby on Rails. 

Definition: An API that can accept URLs and return shorter URLs that when used, redirect to the actual URL.

# User Stories:

- As a user, I want to be able to create a new shortened link where I provide a url and it is shortened
- As a user, when I click on a shortened link it will redirect me to the real url
- As a user, I can create, through the API, an account using username and password 
- As a user, I can login, through the API, to my account to retrieve an API token which will be used for other requests
- As a user, using the API token, I want to be able to create a new shortened link where I provide a url and it is shortened

## Installation
It requires  `ruby 2.7.0` and `rails 6.1.4`

Install the dependencies and devDependencies and start the server.
```
cd url-shortner-api
rake db:create
rake d:migrate
rails s
```


## Postman Collection

Use postman collection named `URL Shortner.postman_collection.json`

- For creating user use `Sign up api` from collection
- After that You can Login using `Login api` and get token in headers named `Authorization`
- Use `Create Short URL` api for generating short url. The output will contain `short_url` field which will contain shortened url. Copy and paste that link in browser
