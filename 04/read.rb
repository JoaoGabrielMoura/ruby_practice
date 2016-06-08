## Gems
## Example Markdown (https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
## Go to console and do:
## gem install redcarpet; gem install github-markup

require 'rubygems'
require 'github/markup'
puts GitHub::Markup.render('4.md', File.read('./read.md'))

## Another beautiful example
## RestClient: Make Web Requests beautifully
## Go to console and do:
## gem install rest-client
## gem install json
## Reference: https://github.com/rest-client/rest-client
require 'rest-client'

## Getting WebSites
RestClient.get 'http://www.google.com'

## Getting Resources
raw_github_users = RestClient.get 'https://api.github.com/users?since=10'

## Using those resources
require 'json'
github_users = JSON.parse(raw_github_users)
github_users.each { |github_user| puts github_user["login"] }
