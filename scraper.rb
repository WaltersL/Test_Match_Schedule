# This is a template for a Ruby scraper on morph.io (https://morph.io)
# including some code snippets below that you should find helpful

require 'scraperwiki'
require 'mechanize'
#
agent = Mechanize.new
#
# Read in a page
page = agent.get("http://www.espncricinfo.com/ci/engine/series/index.html?search=test;view=month")
#
# Find somehing on the page using css selectors
series = page.at('div.copy match-info').
#
# # Write out to the sqlite database using scraperwiki library
ScraperWiki.save_sqlite([:name], {"name" => "South Africa v Australia", "venue"=> "at Cape Town"})
#
# # An arbitrary query against the database
# You don't have to do things with the Mechanize or ScraperWiki libraries.
# You can use whatever gems you want: https://morph.io/documentation/ruby
# All that matters is that your final data is written to an SQLite database
# called "data.sqlite" in the current working directory which has at least a table
# called "data".
