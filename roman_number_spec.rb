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
  context 'M' do
    subject { RomanNumber.new(1000).roman }
    it { is_expected.to eq('M') }
  end
  context 'D' do
    subject { RomanNumber.new(500).roman }
    it { is_expected.to eq('D') }
  end
  context 'C' do
    subject { RomanNumber.new(100).roman }
    it { is_expected.to eq('C') }
  end
  context 'L' do
    subject { RomanNumber.new(50).roman }
    it { is_expected.to eq('L') }
  end
  context 'X' do
    subject { RomanNumber.new(10).roman }
    it { is_expected.to eq('X') }
  end
  context 'V' do
    subject { RomanNumber.new(5).roman }
    it { is_expected.to eq('V') }
  end
  context 'I' do
    subject { RomanNumber.new(1).roman }
    it { is_expected.to eq('I') }
  end
  context 'IV' do
    subject { RomanNumber.new(4).roman }
    it { is_expected.to eq('IV') }
  end
  context 'IX' do
    subject { RomanNumber.new(9).roman }
    it { is_expected.to eq('IX') }
  end
  context 'XL' do
    subject { RomanNumber.new(40).roman }
    it { is_expected.to eq('XL') }
  end
  context 'XLII' do
    subject { RomanNumber.new(42).roman }
    it { is_expected.to eq('XLII') }
  end
  context 'CMXCIX' do
    subject { RomanNumber.new(999).roman }
    it { is_expected.to eq('CMXCIX') }
  end
  context 'CDIV' do
    subject { RomanNumber.new(404).roman }
    it { is_expected.to eq('CDIV') }
  end
end
