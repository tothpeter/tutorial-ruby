class Array
  def file_type_mapper
    result = Hash.new { |hash, key| hash[key] = [] }

    each do |file_name|
      file_ext = File.extname(file_name)[1..-1]
      result[file_ext] << file_name.chomp(".#{file_ext}")
    end

    result
  end
end
