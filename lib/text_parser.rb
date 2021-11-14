class TextParser
	def initialize(file_data: , delimiter: )
		@delimiter = delimiter
		@file_data = file_data
	end

	def to_array
		rows = @file_data.split("\n")
    rows.map!{|row| row.split(delimiter).map!(&:strip)}
	end

  def to_hash
    headers = to_array[0]
    values = to_array[1..-1]
    values.map! do |value|
      headers.zip(value)
    end.map!(&:to_h)
    values
  end

	private

	attr_reader :file_data, :delimiter
end