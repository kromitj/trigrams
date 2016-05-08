require_relative 'trigrams'
require 'pry'  

filename = ARGV.first

txt = open(filename)

trigram = Trigram.new(txt)
trigram.analyze_content
binding.pry
# in console type this...
trigram.give_trigram("upon a")