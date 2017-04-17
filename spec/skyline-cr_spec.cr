require "./spec_helper"

describe Skyline::Cr do
  context "#dominate?" do
    it "Dominate" do
      result = Skyline::Cr.dominate? [1, 2, 3], [2, 3, 4]
      result.should eq(Skyline::Cr::Domination::Dominate)
    end

    it "Non Dominate" do
      result = Skyline::Cr.dominate? [1, 2, 3], [2, 3, 1]
      result.should eq(Skyline::Cr::Domination::NonDominate)
    end

    it "Be Dominated" do
      result = Skyline::Cr.dominate? [2, 3, 4], [1, 2, 3]
      result.should eq(Skyline::Cr::Domination::BeDominated)
    end

    it "Array size not match" do
      expect_raises(SkylineException, "Two Attributes size is not match.") do
        Skyline::Cr.dominate? [2, 3, 4], [1, 2, 3, 1]
      end
    end
  end
end
