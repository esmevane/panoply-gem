require 'panoply/database'

describe Panoply::Database do
  let(:database) { described_class.new }

  subject { database }

  it { is_expected.to respond_to :[] }
  it { is_expected.to respond_to :db }

  describe '#uri' do
    subject { database.uri }

    context 'when ENV["DB_URI"] is present' do
      let(:db_uri) { "sqlite://one/two/three" }
      before { ENV['DB_URI'] = db_uri }
      it { is_expected.to eq db_uri }
    end

    context 'otherwise' do
      before { ENV.delete 'DB_URI' }
      it { is_expected.to be_nil }
    end
  end

end
