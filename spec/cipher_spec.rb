require './cipher'

describe '#cipher' do
  it 'works with capital letters' do
    expect(cipher('Tamara', 5)).to eql('yfrfwf')
  end
end
