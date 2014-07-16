require 'spec_helper'
require 'panoply/app'

describe Panoply::App do
  describe 'mounted middleware' do
    let(:mounted) { described_class.middleware.map { |items| items.first } }
    subject { mounted }
    it { is_expected.to include Rack::Deflater }
    it { is_expected.to include Panoply::Routes::Root }
    it { is_expected.to include Panoply::Routes::Conversations }
  end
end
