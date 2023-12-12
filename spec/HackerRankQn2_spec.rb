require './HackerRank/Qn2'

describe 'countingValleys' do
    steps = "DDUUDUUDD"
    #Positive Case
    it "It counts how many valley has been walked through" do
        expect(countingValleys(steps)).to eql(2)
    end
    
    #Negative Case
    it "It counts how many valley has been walked through" do
        expect(countingValleys(steps)).to eql(5)
    end

    it "It counts how many valley has been walked through" do
        expect(countingValleys(steps)).to eql(9)
    end
end