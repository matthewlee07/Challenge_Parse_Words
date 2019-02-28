require_relative 'lib/count_words'

counter = CountWords.new

File.open("input_file.txt") do |file|
    file.each_line do |line|
        counter.count_words(line)
    end
    counter.order_book_by_count
    counter.render_book    
end

file = File.open("output_file","w") 
    counter.book.map do |k,v|
        file.write("#{k} : #{v}\n")
    end 
file.close