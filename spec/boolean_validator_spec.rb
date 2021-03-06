require 'spec_helper'
require 'active_model'

RSpec.describe BooleanValidator do
  let(:model_class) do
    Class.new do
      include ActiveModel::Validations
      attr_accessor :is_public

      def self.name
        'DummyModel'
      end

      def initialize(is_public)
        @is_public = is_public
      end

      validates :is_public, boolean: { message: ' is invalid.' }
    end
  end

  describe '#validate' do
    subject { model_class.new(is_public) }

    context 'value is blank string' do
      let(:is_public) { '' }
      it { is_expected.not_to be_valid }
    end

    context 'value is an instance of String with blank text' do
      let(:is_public) { nil }
      it { is_expected.not_to be_valid }
    end

    context 'value is "true", an instance of String' do
      let(:is_public) { 'true' }
      it { is_expected.not_to be_valid }
    end

    context 'value is "false", an instance of String' do
      let(:is_public) { 'false' }
      it { is_expected.not_to be_valid }
    end

    context 'value is an instance of Array without any element' do
      let(:is_public) { [] }
      it { is_expected.not_to be_valid }
    end

    context 'value is an instance of Array without one element' do
      let(:is_public) { ['true'] }
      it { is_expected.not_to be_valid }
    end

    context 'value is an instance of Hash without any pair of key/value' do
      let(:is_public) { {} }
      it { is_expected.not_to be_valid }
    end

    context 'value is an instance of Hash with one pair of key/value' do
      let(:is_public) { { dog: 'bow' } }
      it { is_expected.not_to be_valid }
    end

    context 'value is 0, an instance of Integer' do
      let(:is_public) { 0 }
      it { is_expected.not_to be_valid }
    end

    context 'value is 1, an instance of Integer' do
      let(:is_public) { 1 }
      it { is_expected.not_to be_valid }
    end

    context 'value is 0.0, an instance of Float' do
      let(:is_public) { 0.0 }
      it { is_expected.not_to be_valid }
    end

    context 'value is 1.2, an instance of Integer' do
      let(:is_public) { 1.2 }
      it { is_expected.not_to be_valid }
    end

    context 'value is true, an instance of TrueClass' do
      let(:is_public) { true }
      it { is_expected.to be_valid }
    end

    context 'value is false, an instance of FalseClass' do
      let(:is_public) { false }
      it { is_expected.to be_valid }
    end

    it 'when value is string, it adds correct error message' do
      is_public = 'true'
      instance_of_model_class = model_class.new(is_public)
      instance_of_model_class.validate
      expect(instance_of_model_class.errors.messages[:is_public]).to eq [' is invalid.']
    end
  end
end
