class TextAnalyzer

    #### Attributes ####
    attr_reader :text


    #### Instance Methods ####
    def initialize(text)
        @text = text.downcase
    end

    def count_of_words
        words = text.split(" ")
        words.count
    end

    def count_of_vowels
        text.scan(/[aeoui]/).count
    end

    def count_of_consonants
        text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
    end

    def most_used_letter
        s1 = text.gsub(/[^a-z]/, '')
        arr = s1.split('')
        arr1 = arr.uniq
        arr2 = {}
        arr1.map { |c| arr2[c] = arr.count(c) }

        biggest = { arr2.keys.first => arr2.values.first }

        arr2.each do |key, value|
            if value > biggest.values.first
                biggest = {}
                biggest[key] = value
            end
        end

        biggest
    end
end
