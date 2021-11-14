class ResponseBuilder
  def initialize(records: )
    @records = records
  end

  def response
    records.map! do |record| 
      "#{record['first_name']}, #{record['city']}, #{DateTime.parse(record['birthdate']).strftime('%-m/%-d/%Y')}" 
    end
  end

  private
  attr_reader :records
end