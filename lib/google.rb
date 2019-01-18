require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'watir'
require 'selenium-webdriver'
require 'launchy'




def google_search

    browser = Watir::Browser.new(:firefox)
        user_enter_search = ARGV
        if user_enter_search.empty?
            abort("repeat again, word not found!")
        else
        join_word = user_enter_search.join("+")
        browser.goto "www.google.com/search?q=#{join_word}"
        abort("reacherch : success")
        end

end


google_search