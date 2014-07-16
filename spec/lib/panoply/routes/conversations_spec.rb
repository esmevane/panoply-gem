require 'spec_helper'
require 'panoply/routes/conversations'

describe Panoply::Routes::Conversations do
  let(:app) { described_class }
  describe '#index' do
    subject { get '/conversations' }
    it { is_expected.to be_ok }
  end
end
