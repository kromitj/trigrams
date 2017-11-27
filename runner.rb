require_relative 'trigrams'
require 'pry'  

filename = ARGV[1]
txt = open(filename)

trigram = Trigram.new(txt)
trigram.analyze_content
trigram.generate_story(["of","a"], 1000)
binding.pry
# in console type this...
# trigram.generate_story(['upon','a'], 200)