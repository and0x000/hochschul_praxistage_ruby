# frozen_string_literal: true

require_relative 'roman_number'

##
# test class
# https://relishapp.com/rspec/rspec-expectations/v/3-9/docs/built-in-matchers
#
describe RomanNumber do
  context 'base' do
    subject { RomanNumber.new(42) }
    it { is_expected.to be_an_instance_of(RomanNumber) }
  end
end
