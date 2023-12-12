require './HackerRank/Qn4'

describe 'repeatedString' do

    #Positive Case
    it "It shows how many a's are there in a string that is repeated infinitely" do
        expect(repeatedString('aba', 10)).to eql(7)
    end

    it "It shows how many a's are there in a string that is repeated infinitely" do
        expect(repeatedString('aba', 20)).to eql(13)
    end

    #Negative Case
    it "It shows how many a's are there in a string that is repeated infinitely" do
        expect(repeatedString('abc',10)).to eql(90)
    end

    it "It shows how many a's are there in a string that is repeated infinitely" do
        expect(repeatedString('abac',100)).to eql(7)
    end
end