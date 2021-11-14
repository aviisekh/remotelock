class RecordsSorter
	def initialize(records: [], sort_by: )
		@records = records
    @sort_by = sort_by
	end

	def sort        
		records.sort_by{|record| record[sort_by.to_s]}
	end

	private

	attr_reader :records, :sort_by
end