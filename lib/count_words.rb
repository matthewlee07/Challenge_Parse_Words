class CountWords
    attr_reader :book

    def initialize
        @book = Hash.new(0)
    end

    def count_words(input_string)
        input_string.scan(/'?[a-zA-Z]+(?:[-'][a-zA-Z]+)*/).each do |word|
            @book[word.downcase] += 1
        end
    end

    def order_book_by_count
        @book = @book.sort_by{|k,v|-v}
    end

    def render_book
        @book.map do |k,v|
            puts "#{k} : #{v}\n"
        end 
    end
end