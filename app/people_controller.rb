require 'pry-rails'
require 'text_parser'
class PeopleController
  def initialize(params)
    @params = params
  end

  def normalize
    record_1 = TextParser.new(file_data: params[:dollar_format], delimiter: '$').to_hash
    record_2 = TextParser.new(file_data: params[:percent_format], delimiter: '%').to_hash
    binding.pry
    
  end

  private

  attr_reader :params
end
