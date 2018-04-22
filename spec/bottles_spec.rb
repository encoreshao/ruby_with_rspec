require 'rspec'
require_relative '../lib/bottles'

RSpec.describe Bottles do
  it 'should be return full song' do
    test = "10 bottles\\n 9 bottles\\n 8 bottles"
    expect(Bottles.new.verses(10, 8)).to eq(test)
  end

  it 'should be return 10 bottles' do
    expect(Bottles.new.verse(10)).to eq('10 bottles')
  end
end
