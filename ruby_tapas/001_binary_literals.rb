0x7FFF # hexidecimal
0755 # octal


require "fileutils"
include FileUtils

chmod 0664, "test_file"

# U  G  O
# rwxrwxrwx
0b110110100

perms = 0b110110100

p perms.to_s(8)

chmod perms, "test_file"
