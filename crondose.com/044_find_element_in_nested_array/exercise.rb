def find_element list, item_to_find
  list.find { |item| item[1] == item_to_find }
end
