require 'rails_helper'

RSpec.describe Calculator, type: :model do
  describe "validations" do
    let(:num1) { 5 }
    let(:num2) { 10 }
    let(:sum) { num1 + num2 }
    let(:product) { num1 * num2 }
    let(:calculator) { Calculator.new }

    context "valid" do
      it { expect(calculator.sum(num1, num2)).to eq(sum) }
    end

    context "wrong result" do
      it { expect(calculator.sum(num1, num2)).not_to eq(product) }
    end
  end
end
