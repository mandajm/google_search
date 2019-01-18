require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'watir'
require 'selenium-webdriver'
require 'launchy'




def check_if_user_gave_input
    abort("nom du dossier vide") if ARGV.empty?
  end	
  check_if_user_gave_input
  def get_folder_name
       folder_name = ARGV.first
  end	
  get_folder_name
  def create(get_folder_name)
       folder_name = get_folder_name
      Dir.mkdir(folder_name)
      Dir.mkdir(".gitignore")
      Dir.chdir("#{folder_name}")
      file = File.open("Gemfile","w")
      env = File.open(".env","w")
  end
  create(get_folder_name)
  def file 
  a = File.open("Gemfile","a")
  a.puts('source "https://rubygems.org"')
  a.puts("ruby '2.5.3'")
  a.puts("gem 'rspec'")
  a.puts("gem 'pry'")
  a.puts("gem 'rubocop', '~> 0.57.2'")
  a.puts("gem 'dotenv'")
  a.puts("gem 'twitter'")
  a.puts("gem 'nokogiri'")
  a.puts("gem 'launchy'")
  a.puts("gem 'watir'")
  a.puts("gem 'selenium-webdriver'")
  a.close
  end	
  file	
  def create_lib
      Dir.mkdir("lib")
      system("rspec --init")
      system("bundle install")
  end	
  create_lib
