# frozen_string_literal: true

require_relative 'fizz_buzz'

##
# test class
# https://relishapp.com/rspec/rspec-expectations/v/3-9/docs/built-in-matchers
#
describe FizzBuzz do
  context 'base' do
    subject { FizzBuzz.new(0..100) }
    it { is_expected.to be_an_instance_of(FizzBuzz) }
  end
  context '3 -> Fizz' do
    subject { FizzBuzz.new([3]).items }
    it { is_expected.to contain_exactly('Fizz') }
  end
  context '3 -> Buzz' do
    subject { FizzBuzz.new([5]).items }
    it { is_expected.to contain_exactly('Buzz') }
  end
  context '15 -> FizzBuzz' do
    subject { FizzBuzz.new([15]).items }
    it { is_expected.to contain_exactly('FizzBuzz') }
  end
  context '2 -> 2' do
    subject { FizzBuzz.new([2]).items }
    it { is_expected.to contain_exactly('2') }
  end
end
