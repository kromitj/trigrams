class Trigram
  attr_accessor :words, :trigrams_hash, :content

  def initialize(content)
    @trigrams_hash = Hash.new
    @content = content
  end

  def analyze_content
    self.convert_content_to_array
    self.populate_trigrams_hash
  end

  def convert_content_to_array
    @words = @content.read.split
  end

  def populate_trigrams_hash
    counter = 0
    while counter < (@words.length - 3)
      key = "#{@words[counter].downcase} #{@words[counter + 1].downcase}"
      if @trigrams_hash[key] == nil
        @trigrams_hash[key] = []        
      end
      @trigrams_hash[key] << @words[counter + 2 ].downcase    
      counter += 1
    end
  end

  def give_trigram(bigram)
    bigram_hash = @trigrams_hash[bigram.join(" ")]
    word = bigram_hash[(0..bigram_hash.length-1).to_a.sample]
    word
  end

  def generate_story(initial_bigram, words_in_story)
    start_words = initial_bigram
    story = [start_words[0], start_words[1]]
    words_in_story.times do |i|
      story << self.give_trigram([story[-2], story[-1]])
    end
    return story.to_s
  end

end