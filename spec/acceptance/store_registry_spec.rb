describe "Registering and retrieving stores" do
  let(:store) { double('store') }

  before { Panoply.register_store :keyword, store }

  subject { Panoply.store_for :keyword }

  it { is_expected.to eq store }

end
