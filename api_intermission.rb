require 'faraday'
require 'pry'

response = Faraday.get 'https://api.github.com/users/danmoran-pro'

body = response.body 

data = JSON.parse(body)
followers = data['followers']
joined = data['created_at']

binding.pry
