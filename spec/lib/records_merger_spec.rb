require 'spec_helper'

RSpec.describe 'RecordsMerger' do
  let(:records_1 ) { [{"birthdate"=>"30-4-1974", "city"=>"LA"}]  }
  let(:records_2) { [{"birthdate"=>"5-1-1962", "city"=>"NYC"}] }
  let(:merger) { RecordsMerger.new(records: [records_1, records_2 ]) }

  describe '#merge' do
    it 'should merge the records into one single array' do
      expected_response = [{"birthdate"=>"30-4-1974", "city"=>"LA"},{"birthdate"=>"5-1-1962", "city"=>"NYC"} ]
      expect(merger.merge).to eq expected_response
    end
  end
end
