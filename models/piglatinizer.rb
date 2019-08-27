class PigLatinizer

    # do piglatin for one word
    def change_word(word)
        split_word = word.split(/([aeiouAEIOU].*)/)
        if split_word[0] == ""
            changed_word = split_word[-1] + "way"
        else 
            changed_word = split_word[-1] + split_word[0] + "ay"
        end
        changed_word
    end

    # do piglatin for a phrase
    def piglatinize(text)
        text_split_by_space = text.split(" ")
        text_split_by_space.map do |word|
            change_word(word)
        end.join(" ")
    end

end