class Anagram
    def initialize (word)
        @word = word
    end
    #needs to check if Anagram word matches to an anagram given to match
    #must detect a match, simple letter match (not necessarily a word), more then one anagram
    
    def match (word_array)
        #to find an anagram the letters in one word needs to match all the letters in another just in different order
        #get letters of anagram word
        letters_in_anagram_word = @word.chars.sort
        #iterate through array of words get their letter and compare to anagram word
        matching = []
        word_array.each do |word_to_compare|
            letters_to_compare = word_to_compare.chars.sort
            if letters_to_compare == letters_in_anagram_word
                matching << word_to_compare
            end
        end
        matching        
    end

end
