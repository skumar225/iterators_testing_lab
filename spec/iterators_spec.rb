require_relative './spec_helper'

describe "Iterators" do

#Here we are declaring a few items before we run each test
before :each do
  @arr = [1,2,3,4,5]
  @hash = {:a => 100, :b => 200}
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
        expect(@arr.reject { |num| num.even?}).to eq([1,3,5])
      end
  end

  # collect / map
  describe "#map" do
    it "should square each number" do
        expect(@arr.map { |i| i ** 2}).to eq([1,4,9,16,25])
      end
  end

  # detect / find
  describe "#detect" do
    it "should detect all numbers divisible by 2 and 4" do
        expect(@arr.detect {|i| i % 2 == 0 && i % 4 == 0} ).to eq(4)
      end
  end

  # inject
  describe "#inject" do
    it "should sum up all the numbers" do
      expect(@arr.inject { |sum, n| sum + n}).to eq(15)
    end
  end

  # partition
  describe "#partition" do
    it "should return an array of partitioned arrays " do
      expect(@arr.partition { |i| i.even?} ).to eq([[2,4], [1,3,5]])
    end
  end

  # sort
  describe "#sort" do
    it "should sort an array of numbers" do
      expect(@arr.sort { |a, b| b <=> a} ).to eq([5,4,3,2,1])
    end
  end

  # one?
  describe "#one" do
    it "should return true if only one element meets the condition" do
      expect(@arr.one? { |i| i > 4  } ).to be(true)
    end
    it "should return false if more than one element meets the condition" do
      expect(@arr.one? {|i| i == 10}).to be(false)
    end
  end

  # none?
  describe "#none" do
    it "should return true if the number is not in the array " do
      expect(@arr.none? {|i| i == 10}).to be(true)
    end
    it "should return false if the number is in the array " do
      expect(@arr.none? { |i| i < 6}).to be(false)
    end
  end

  #all?
  describe "#all" do
    it "should return true if the condition passes at all elements in the array" do
      expect(@arr.all? {|i| i < 6}).to be(true)
    end
  end

  #empty?
  describe "#empty?" do
    it "should return false if the array is not empty" do
      expect(@arr.empty? { |i| i == 0}).to be(false)
    end
  end

  #eql?
  describe "#eql?" do
    it "should return true if an identical array is compared" do
      expect(@arr.eql? ([1,2,3,4,5])).to be(true)
    end
  end

  #include?
  describe "#include?" do
    it "should return true if the parameter passed to include? is in the array" do
      expect(@arr.include?(1)).to be(true)
      expect(@arr.include?(10)).to be(false)
    end
  end

  #nil?
  describe "#nil?" do
    it "should return true if the object is nil" do
      expect(@nill.nil?).to be(true)
    end
  end

#HASH METHODS

  #key?
  describe "hash method - #key?" do
    it "should return true if hash contains a key of :b" do
      expect(@hash.key?(:a)).to be(true)
    end
  end

  #keys
  describe "hash method - #keys" do
    it "should return array of symbols" do
      expect(@hash.keys).to eq([:a, :b])
    end
  end

  #delete
  describe "hash method - #delete" do
    it "should return value of key that is deleted" do
      expect(@hash.delete(:a)).to eq(100)
    end
  end

  #delete_if
  describe "hash method - #delete_if" do
    it "should delete key/value pair for any value equal to 100" do
      expect(@hash.delete_if {|key, value| key = :a }).to eq({:b => 200})
    end
  end

end #end describe iterators