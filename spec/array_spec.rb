require 'array'

describe Array do
  let(:array) { [1,2,3,4] }

  add = Proc.new { |acc, elem| acc + elem }
  sub = Proc.new { |acc, elem| acc - elem }
  mul = Proc.new { |acc, elem| acc * elem }
  div = Proc.new { |acc, elem| acc / elem }

  context 'my_inject should behave like inject when' do
    it 'addition, should return 10' do
      expect(array.my_inject &add).to eq 10
    end

    it 'substraction, should return -8' do
      expect(array.my_inject &sub).to eq -8
    end

    it 'multiplication, should return 24' do
      expect(array.my_inject &mul).to eq 24
    end

    it 'division, should return 0' do
      expect(array.my_inject &div).to eq 0
    end
  end
end