require "./spec_helper"

describe Skyline::Cr do
  context "#dominate" do
    it "Dominate" do
      ([1, 2, 3].dominate? [2, 3, 4]).should eq(Domination::Dominate)
    end

    it "Non Dominate" do
      ([1, 2, 3].dominate? [2, 3, 1]).should eq(nil)
    end

    it "Be Dominated" do
      ([2, 3, 4].dominate? [1, 2, 3]).should eq(Domination::BeDominated)
    end

    it "Array size not match" do
      expect_raises(SkylineException, "Two Attributes size are not match.") do
        [2, 3, 4].dominate? [1, 2, 3, 1]
      end
    end
  end
end
