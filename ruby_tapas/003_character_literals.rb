print "Give me a character: "

case $stdin.getc.downcase
when ?y then p "Yeah"
when ?n then p "No :("
else p "else"
end
