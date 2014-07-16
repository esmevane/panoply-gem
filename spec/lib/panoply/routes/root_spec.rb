require 'spec_helper'
require 'panoply/routes/root'

describe Panoply::Routes::Root do
  let(:app) { described_class }
  describe '#index' do
    subject { get '/' }
    it { is_expected.to be_ok }
  end
end
