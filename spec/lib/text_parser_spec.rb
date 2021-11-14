require 'spec_helper'

RSpec.describe 'TextParser' do
  let(:file_data) { "city $ birthdate\nLA $ 30-4-1974\nNYC $ 5-1-1962\n" }
  let(:delimiter) { "$" }
  let(:parser) { TextParser.new(file_data: file_data, delimiter: delimiter) }

  describe '#to_array' do
    it 'should return the array of headers and values' do
      expected_response = [["city", "birthdate"], ["LA", "30-4-1974"], ["NYC", "5-1-1962"]]
      expect(parser.to_array).to eq expected_response
    end
  end

  describe '#to_hash' do
    it 'should return the hash of headers and values' do
      expected_response = [{"birthdate"=>"30-4-1974", "city"=>"LA"}, {"birthdate"=>"5-1-1962", "city"=>"NYC"}]  
      expect(parser.to_hash).to eq expected_response
    end
  end
end
