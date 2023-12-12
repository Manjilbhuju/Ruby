require './HackerRank/Qn1'

describe "sockMerchant" do
    # n = 7
    # ar = [1,2,1,9,1,3,0]
    it "It return the number of pairs" do
        expect(sockMerchant(7, [1,2,1,9,1,3,0])).to eql(1)
    end
    
    it "It returns the number of pairs" do
        expect(sockMerchant(7, [1,2,1,9,1,3,0])).to eql(5)
    end
end