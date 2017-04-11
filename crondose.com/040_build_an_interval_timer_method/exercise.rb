def interval seconds
  loop do
    yield
    sleep seconds
  end
end


interval 2 do
  p "Hey there"
end
