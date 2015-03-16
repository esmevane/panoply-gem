require 'panoply/registry'

describe Panoply::Registry do
  let(:key) { :key }
  let(:value) { "value" }
  let(:contents) { {} }
  let(:registry) { described_class.new contents }

  subject { registry }

  it { is_expected.to respond_to :contents }

  describe '#assign' do
    before { registry.assign key, value }
    subject { registry.contents.fetch key }
    it { is_expected.to eq value }
  end

  describe "#retrieve" do
    subject { registry.retrieve key }

    context 'when the keyword is stored' do
      let(:contents) { { key => value } }
      it { is_expected.to eq value }
    end

    context 'otherwise' do
      it { is_expected.to be_nil }
    end
  end

end
