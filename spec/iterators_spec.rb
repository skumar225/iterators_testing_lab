require_relative './spec_helper'

describe "Iterators" do

#Here we are declaring a few items before we run each test
before :each do
  @arr = [1,2,3,4,5]
  @hash = {}
  @nil = nil
end
  # select
  describe "#select" do
      it "should select even numbers" do
        expect(@arr.select { |num|  num.even?  }).to eq([2,4])
      end
    end

  # reject
  describe "#reject" do
    it "should reject even numbers" do
        expect().to eq()
      end
  end

  # collect / map
  describe "#map" do
    it "should square each number" do
        expect().to eq()
      end
  end

  # detect / find
  describe "#detect" do
    it "should detect all numbers divisible by 2 and 4" do
        expect().to eq()
      end
  end

  # inject
  describe "#inject" do
    it "should sum up all the numbers" do
      expect().to eq()
    end
  end

  # partition
  describe "#partition" do
    it "should return an array of partitioned arrays " do
      expect().to eq()
    end
  end

  # sort
  describe "#sort" do
    it "should sort an array of numbers" do
      expect().to eq()
    end
  end

  # one?
  describe "#one" do
    it "should return true if only one element meets the condition" do
      expect().to be()
    end
    it "should return false if more than one element meets the condition" do
      expect().to be()
    end
  end

  # none?
  describe "#none" do
    it "should return true if the number is not in the array " do
      expect().to be()
    end
    it "should return false if the number is in the array " do
      expect().to be()
    end
  end

  #all?
  describe "#all" do
    it "should return true if the condition passes at all elements in the array" do
      expect().to be()
    end
  end

  #empty?
  describe "#empty?" do
    it "should return false if the array is not empty" do
      expect().to be()
    end
  end

  #eql?
  describe "#eql?" do
    it "should return true if an identical array is compared" do
      expect().to be()
    end
  end

  #include?
  describe "#include?" do
    it "should return true if the parameter passed to include? is in the array" do
      expect().to be(true)
      expect().to be(false)
    end
  end

  #nil?
  describe "#nil?" do
    it "should return true if the object is nil" do
      expect().to be()
    end
  end
end