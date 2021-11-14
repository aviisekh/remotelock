require 'spec_helper'

RSpec.describe 'RecordsMerger' do
  let(:records ) { [{"birthdate"=>"5-1-1962", "city"=>"NYC"}, {"birthdate"=>"30-4-1974", "city"=>"LA"}] }
  let(:sorter) { RecordsSorter.new(records: records, sort_by: :city) }

  describe '#merge' do
    it 'should merge the records into one single array' do
      expected_response = [{"birthdate"=>"30-4-1974", "city"=>"LA"},{"birthdate"=>"5-1-1962", "city"=>"NYC"} ]
      expect(sorter.sort).to eq expected_response
    end
  end
end
