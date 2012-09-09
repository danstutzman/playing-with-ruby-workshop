require 'csv'

# Define CSV.table for Ruby versions < 1.9
if !defined?(CSV::table)
  class CSV
    # Example CSV file:
    #   a,b,c
    #   1,2,3
    #   4,5,6
    # Example output from CSV.table reading the above file:
    #   [{ :a => 1, :b => 2, :c => 3 },
    #    { :a => 4, :b => 5, :c => 6 }]
    def self.table(path)
      rows = CSV.read(path)
      headers = rows.shift
      rows.map { |row|
        (0...row.size).inject({}) { |hash, i|
          header = headers[i].intern
          value = case row[i]
            when /^[0-9]+$/ then row[i].to_i
            when /^[0-9.]+$/ then row[i].to_f
            else row[i]
          end
          hash.merge({ header => value })
        }
      }
    end
  end
end
