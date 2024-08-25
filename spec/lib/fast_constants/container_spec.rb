# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FastConstants::Container do
  subject { described_class.load_and_set! }

  let(:name) { 'FakeConstants' }
  let(:directory) { 'spec/fixtures/*.yml' }

  before do
    allow(FastConstants::Configuration.config).to receive_messages(name:, directory:)
  end

  it 'defines config name as kernel constant' do
    allow(Kernel).to receive(:const_set)

    subject

    expect(Kernel).to have_received(:const_set)
      .with(name, an_instance_of(FastConstants::DeepTransformation))
  end

  it 'defines kernel constant content as the yaml content' do
    subject

    expect(FakeConstants.fake).to include({ a: 1, b: 2 })
  end
end
