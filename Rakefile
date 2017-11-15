# Testing => rake console

require_relative './config/environment'
require 'pry'
require 'rake'

puts "Welcome to My Pets ... object relations"

def reload!
  load './lib/cat.rb'
  load './lib/dog.rb'
  load './lib/fish.rb'
  load './lib/owner.rb'
end

desc "A Console"
task :console do
  pry.start
end
