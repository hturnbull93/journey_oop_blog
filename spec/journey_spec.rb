require 'journey'

describe Journey do
  # Set up doubles
  let(:method_of_transport_class_double) { double(:method_of_transport, new: method_of_transport_instance_double) }
  let(:method_of_transport_instance_double) { double(:method_of_transport) }

  # Inject doubles into a Journey instance
  let(:isolated_journey) { described_class.new("the shops", method_of_transport_class_double) }

  it '#start calls start on the object contained in @method_of_transport' do
    expect(method_of_transport_instance_double).to receive(:start)
    isolated_journey.start
  end
  it '#finish calls finish on the object contained in @method_of_transport' do
    expect(method_of_transport_instance_double).to receive(:finish)
    isolated_journey.finish
  end
end
