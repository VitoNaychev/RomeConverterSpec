require "RomeConverter"

describe RomeConverter do
    describe ".to_rome" do
        context "given 1" do
            it "returns I" do
                expect(RomeConverter.new.to_rome(1)).to eql("I")
            end
        end
        context "given 4" do
            it "returns IV" do
                expect(RomeConverter.new.to_rome(4)).to eql("IV")
            end
        end
        context "given 5" do
            it "returns V" do
                expect(RomeConverter.new.to_rome(5)).to eql("V")
            end
        end
        context "given 9" do
            it "returns IX" do
                expect(RomeConverter.new.to_rome(9)).to eql("IX")
            end
        end
        context "given 10" do
            it "returns X" do
                expect(RomeConverter.new.to_rome(10)).to eql("X")
            end
        end
        context "give 49" do
            it "returns XLIX" do
                expect(RomeConverter.new.to_rome(49)).to eql("XLIX")
            end
        end
        context "given 50" do
            it "returns L" do
                expect(RomeConverter.new.to_rome(50)).to eql("L")
            end
        end
        context "give 99" do
            it "returns XCIX" do
                expect(RomeConverter.new.to_rome(99)).to eql("XCIX")
            end
        end
        context "given 100" do
            it "returns C" do
                expect(RomeConverter.new.to_rome(100)).to eql("C")
            end
        end
        context "give 499" do
            it "returns CDXCIX" do
                expect(RomeConverter.new.to_rome(499)).to eql("CDXCIX")
            end
        end
        context "given 500" do
            it "returns D" do
                expect(RomeConverter.new.to_rome(500)).to eql("D")
            end
        end
        context "give 999" do
            it "returns CMXCIX" do
                expect(RomeConverter.new.to_rome(999)).to eql("CMXCIX")
            end
        end
        context "given 1000" do
            it "returns M" do
                expect(RomeConverter.new.to_rome(1000)).to eql("M")
            end
        end
        context "give 4999" do
            it "returns MMMMCMXCIX" do
                expect(RomeConverter.new.to_rome(4999)).to eql("MMMMCMXCIX")
            end
        end
    end

    describe ".to_dec" do
        context "given I" do
            it "returns 1" do
                expect(RomeConverter.new.to_dec("I")).to eql(1)
            end
        end
        context "given IV" do
            it "returns 4" do
                expect(RomeConverter.new.to_dec("IV")).to eql(4)
            end
        end
        context "given V" do
            it "returns 5" do
                expect(RomeConverter.new.to_dec("V")).to eql(5)
            end
        end
        context "given 9" do
            it "returns IX" do
                expect(RomeConverter.new.to_dec("IX")).to eql(9)
            end
        end
        context "given X" do
            it "returns 10" do
                expect(RomeConverter.new.to_dec("X")).to eql(10)
            end
        end
        context "give XLIX" do
            it "returns 49" do
                expect(RomeConverter.new.to_dec("XLIX")).to eql(49)
            end
        end
        context "given L" do
            it "returns 50" do
                expect(RomeConverter.new.to_dec("L")).to eql(50)
            end
        end
        context "give XCIX" do
            it "returns 99" do
                expect(RomeConverter.new.to_dec("XCIX")).to eql(99)
            end
        end
        context "given C" do
            it "returns 100" do
                expect(RomeConverter.new.to_dec("C")).to eql(100)
            end
        end
        context "given CDXCIX" do
            it "returns 499" do
                expect(RomeConverter.new.to_dec("CDXCIX")).to eql(499)
            end
        end
        context "given D" do
            it "returns 500" do
                expect(RomeConverter.new.to_dec("D")).to eql(500)
            end
        end
        context "given CMXCIX" do
            it "returns 999" do
                expect(RomeConverter.new.to_dec("CMXCIX")).to eql(999)
            end
        end
        context "given M" do
            it "returns 1000" do
                expect(RomeConverter.new.to_dec("M")).to eql(1000)
            end
        end
        context "given MMMMCMXCIX" do
            it "returns 4999" do
                expect(RomeConverter.new.to_dec("MMMMCMXCIX")).to eql(4999)
            end
        end
    end
end
