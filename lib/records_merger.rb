class RecordsMerger
	def initialize(records: [])
		@records = []
	end

	def merge
		result = {}
		records.each do |record|
			record[]
		end
	end

	private

	attr_reader :records
end