require 'numerals.rb'
describe NumeralCalculator do
  it 'when passed 1 "I" is returned' do
    expect(subject.roman_numeral(1)).to eq("I")
  end

  it 'when passed 2 "II" is returned' do
    expect(subject.roman_numeral(2)).to eq("II")
  end

  it 'when passed 3 "III" is returned' do
    expect(subject.roman_numeral(3)).to eq("III")
  end

  it 'when passed 4 "IV" is returned' do
    expect(subject.roman_numeral(4)).to eq("IV")
  end

  it 'when passed 5 "V" is returned' do
    expect(subject.roman_numeral(5)).to eq("V")
  end

  it 'when passed 6 "VI" is returned' do
    expect(subject.roman_numeral(6)).to eq("VI")
  end

  it 'when passed 7 "VII" is returned' do
    expect(subject.roman_numeral(7)).to eq("VII")
  end

  it 'when passed 9 "IX" is returned' do
    expect(subject.roman_numeral(9)).to eq("IX")
  end

  it 'when passed 10 "X" is returned' do
    expect(subject.roman_numeral(10)).to eq("X")
  end

  it 'when passed 19 "XIX" is returned' do
    expect(subject.roman_numeral(19)).to eq("XIX")
  end

  it 'when passed 20 "XX" is returned' do
    expect(subject.roman_numeral(20)).to eq("XX")
  end

  it 'when passed 21 "XXI" is returned' do
    expect(subject.roman_numeral(21)).to eq("XXI")
  end

  it 'when passed 40 "XL" is returned' do
    expect(subject.roman_numeral(40)).to eq("XL")
  end

  it 'when passed 41 "XLI" is returned' do
    expect(subject.roman_numeral(41)).to eq("XLI")
  end

  it 'when passed 90 "XC" is returned' do
    expect(subject.roman_numeral(90)).to eq("XC")
  end

  it 'when passed 251 "CCLI" is returned' do
    expect(subject.roman_numeral(251)).to eq("CCLI")
  end

  it 'when passed 900 "CM" is returned' do
    expect(subject.roman_numeral(900)).to eq("CM")
  end

  it 'when passed 1000 "M" is returned' do
    expect(subject.roman_numeral(1000)).to eq("M")
  end

  it 'when passed 2423 "MMCDXXIII" is returned' do
    expect(subject.roman_numeral(2423)).to eq("MMCDXXIII")
  end

end