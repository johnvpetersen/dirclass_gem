class Dir

 def self.list( options = {} )

   options = { :directory => Dir.pwd(), :pattern => '*.*', :order => 'ASC' }.merge options

   files = []

   glob( File.join(options[:directory], options[:pattern])).each do |file|
      files << {:file => File.split(file)[1], :date => File.stat(file).mtime}
   end

   options[:order] == 'ASC' ? 
     files.sort! {|a,b| a[:date] <=> b[:date]} : 
       files.sort! {|a,b| b[:date] <=> a[:date]}
 end
end