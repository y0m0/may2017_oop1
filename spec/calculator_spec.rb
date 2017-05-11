require 'calculator'

RSpec.describe 'a calculator' do
  it "adds two numbers together" do
    expect(add(2, 3)).to eq 5
    expect(add(1, 2)).to eq 3
  end
end


