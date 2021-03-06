require 'spec_helper'
include GeneticAlgorithms

describe RouletteWheel do
  subject { RouletteWheel.new({a: 3, b: 1, c: 2}) }

  describe "#spin" do

    SPINS = 1000

    it "should return the highest score on a long enough timeline" do
      results = {a: 0, b: 0, c: 0}
      SPINS.times { results[subject.spin] += 1 }

      (results[:a] > results[:b] and results[:a] > results[:c]).should == true
    end
  end
end
