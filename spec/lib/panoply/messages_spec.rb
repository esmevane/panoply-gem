require 'panoply/messages'

describe Panoply::Messages do
  let(:messages) { described_class.new }

  subject { messages }

  it { is_expected.to respond_to :validation }
end
