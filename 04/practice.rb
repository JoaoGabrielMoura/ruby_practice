# Steps:
# Remember to install:
# RestClient => gem install rest-client
# JSON => gem install json
# 1. Create a GithubUser class to fetch your profile
# 2. Create a method on that class to fetch github users, and
# map them to the class
# username, html url, location

require 'rest-client'
require 'json'
## Your code starts here

class GithubUser
  attr_reader :login, :location, :url, :image_url
  def initialize(github_user)
    @login = github_user["login"]
    @location = github_user["location"]
    @url = github_user["html_url"]
    @image_url = github_user["avatar_url"]
  end

  def self.all
    array_of_users = []
    raw_github_users = RestClient.get 'https://api.github.com/users'
    github_users = JSON.parse(raw_github_users)
    github_users.map { |attributes| GithubUser.new(attributes) }
  end
end

raw_github_user = RestClient.get 'https://api.github.com/users/JoaoGabrielMoura'
github_user = JSON.parse(raw_github_user)
user = GithubUser.new(github_user)
puts user
puts GithubUser.all
