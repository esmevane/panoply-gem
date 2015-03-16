require 'panoply'

# # Dreamcode
#
# post '/conversations' do
#   contents = params.fetch :message, Hash.new
#   feedback = Panoply::Message.new(contents).valid.publish.feedback
#   haml feedback
# end
#
describe "Sending a message" do

  before { Panoply.register_store :messages, Panoply.database[:messages] }

  let(:message_store) { Panoply.store_for :messages }

  subject { Panoply::Messages.new(contents).valid.publish.feedback }

  context 'publishing an invalid message' do
    let(:errors) do
      { sender:     [ "is required" ],
        subject:    [ "is required" ],
        recipients: [ "are required" ] }
    end

    let(:contents) { Hash.new }
    let(:errors_feedback) { Panoply::Messages::Feedback.new(errors) }

    it 'will not add a new record to the database' do
      expect(message_store.count).to eq 0
    end

    it 'will contain error feedback outlining the problems' do
      expect(subject).to eq errors_feedback
    end
  end

  context 'publishing a valid message' do
    it 'will add a new record to the database'
    it 'will contain success feedback'
  end

end
