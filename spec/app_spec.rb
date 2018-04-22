require "rspec"
require_relative "../lib/app"

RSpec.describe App do
  it 'should be say hello' do
    expect(App.new.say_hello).to eq('Hello!')
  end

  it 'should be return 4' do
    expect(App.new.output(2)).to eq(4)
  end

  it 'should be return 2' do
    expect(App.new.div(4)).to eq(2)
  end
end
