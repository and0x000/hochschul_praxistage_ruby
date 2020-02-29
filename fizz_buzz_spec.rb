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
end
