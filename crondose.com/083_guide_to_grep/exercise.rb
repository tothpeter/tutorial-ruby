class Array
  def file_name_selector extension
    extension = ".#{extension}" unless extension[0] == "."

    select { |file| File.extname(file) == extension }.map { |file| File.basename(file, extension) }
  end

  def file_name_selector_with_reduce extension
    extension = ".#{extension}" unless extension[0] == "."

    reduce([]) do |result, file|
      result << File.basename(file, extension) if File.extname(file) == extension
      result
    end
  end

  def file_name_selector_with_grep extension
    grep(/(.*)\.#{extension}$/) { $1 }
  end
end
