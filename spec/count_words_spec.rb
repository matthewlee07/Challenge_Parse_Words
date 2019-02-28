require 'rspec'
require_relative '../lib/count_words'

describe 'initializing book' do 
    let(:test){CountWords.new}
    it 'test starts empty' do 
        expect(test.book).to eq({})
    end
end

describe 'counting a single line' do 
    let(:test){CountWords.new}
    it 'counters has correct value' do 
        test.count_words('This is a sample test for the test sample')
        expected = {
            'this' => 1,
            'is' => 1,
            'a' => 1,
            'sample' => 2,
            'test' => 2,
            'for' => 1,
            'the' => 1
        }
        expect(test.book).to eq(expected)
    end
end

describe 'recognizes words with apostrophe and hyphen' do 
    let(:test){CountWords.new}
    it 'recognizes words with apostophe' do 
        test.count_words("The neighbor's son's son is a good-for-nothing son")
        expected = {
            'the' => 1,
            "neighbor's" => 1,
            "son's" => 1,
            'son' => 2,
            'is' => 1,
            'a' => 1,
            'good-for-nothing' =>1          
        }
        expect(test.book).to eq(expected)
    end
end
