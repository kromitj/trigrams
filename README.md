#Trigrams
##Create stories in the style of other stories

The programs takes in a story and creates trigrams from it

<dl>
  <dt>Trigram</dt>
  <dd>Trigram analysis is very simple. Look at each set of three adjacent words in a document. Use the first two words of the set as a key, and remember the fact that the third word followed that key.</dd>
</dl>
###Trigram of the phrase, the quick red fox jumps over the lazy brown dog
    the quick red
    quick red fox
    red fox jumps
    fox jumps over
    jumps over the
    over the lazy
    the lazy brown
    lazy brown dog

###The data-structure created from this looks like this:
    trigrams = {
        "the quick": ["red"],
        "quick red": ["fox"],
        "red fox": ["jumps"],
        "fox jumps": ["over"],
        "jumps over": ["the"],
        "over the": ["lazy"],
        "the lazy": ["brown"],
        "lazy brown": ["dog"],
    }
###To illustrate the value being an array here is another string:
    "i want chips i want pop i want grapes"
    # this would be the corresponding hash:
    trigrams = {
        "i want": ["chips", "pop", "grapes"],
        "want chips": "i",
        "chips i": "want",
        "want pop": "i",
        "pop i": "want",
    }

###To create a story using A Christmas Story and Great Expectations as its data model type this in the terminal: 
    ruby runner.rb a_christmas_carol.txt 
###Or to do the same thing except use the complete works of Shakshere type this:
    ruby runner.rb shakespeare.txt 

Here is a sample story generated from Charles Dickens novels:

    in the church, i felt that i should make nothing of the best of it for him said pumblechook, screwing his head was furrowed and bald, and that i would take it away. i had little influence on my shoulder, and saw that both boats were swinging round with me, it was not all stone. but perhaps you know the answer spoilt his joke, and brought him into miss havisham's to mr. pumblechook, leading the way in heaven. he touched me gently on the opposite bank of the parlor ceiling at mill pond bank, herbert and i was born had nothing in.

Another one:

    in the same man, remember pursued the ghost, will find him not go stalking about the project gutenberg-tm works. if you were a dog in disgrace. i was not at all hours. i have my own person or entity providing it to my house said the girl; but you were always clean. she was so very confidential together, behind the door, and asked the last time, what would alone have set a man-trap and was beating himself all over with little bottles, joe now sat down in a traveller's rest, what lay hid up to the boy was reading near a sluice-gate.

###Pretty cool right...

