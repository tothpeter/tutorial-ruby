require "date"

def date_parser str
  Date.strptime str, "%m/%d/%Y"
end
