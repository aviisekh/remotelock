require 'pry-rails'
require 'text_parser'
require 'records_merger'
require 'records_sorter'
class PeopleController
  def initialize(params)
    @params = params
  end

  def normalize
    records_1 = TextParser.new(file_data: params[:dollar_format], delimiter: '$').to_hash
    records_2 = TextParser.new(file_data: params[:percent_format], delimiter: '%').to_hash
    result = RecordsMerger.new(records: [records_1, records_2] ).merge
    sorted_result = RecordsSorter.new(records: result, sort_by: "city").sort
    
    
  end

  private

  attr_reader :params
end
