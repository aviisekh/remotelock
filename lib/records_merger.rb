class RecordsMerger
	def initialize(records: [])
		@records = records
	end

	def merge
		records.inject(:+).flatten
	end

	private

	attr_reader :records
end