require "rspec"
require_relative "../lib/app"

RSpec.describe App do
  it 'should be say hello' do
    expect(App.new.say_hello).to eq('Hello!')
  end
end
