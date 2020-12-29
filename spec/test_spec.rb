require_relative 'spec_helper'
require_relative '../lib/solver'

RSpec.describe 'solve' do
  def test(input, output)
    expect(solve(input)).to eq(output)
  end

  it do
    test('A1C2B3', 'A1B3C2')
  end
end
