# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FastConstants::DeepTransformation do
  subject { described_class.new(hash) }

  let(:hash) { {} }

  it { expect(subject).to be_instance_of(described_class) }

  context 'when using a flat hash' do
    let(:hash) { { a: 1 } }

    it { expect(subject.a).to eq(1) }
  end

  context 'when using a nested hash' do
    let(:hash) { { a: { b: { c: { d: 'string' } } } } }

    it { expect(subject.a.b.c.d).to eq('string') }
  end

  context 'when value is a array' do
    context 'when using a nested hash' do
      let(:hash) { { a: %w[value] } }

      it { expect(subject.a).to match(%w[value]) }
    end
  end
end
