require "uri"
require "net/http"
# pre-req: create a txt file of urls with faker gem


#Opens the file
file = File.open("urls.txt", "r")

#Counts number of lines (urls) will be checked
lines = File.foreach(file).count
puts "Checking #{lines} urls..."

# Gets the url & status code from each line until the end of file
while !file.eof?
  line = file.readline.chomp
  uri = URI.parse(line)
  response = Net::HTTP.get_response(uri)

  puts "The url #{line} is returning a #{response.code} status"
end



# 3. For each line of text, pull out the url and check the http status code
# 4. Send result email to yourself
# 5. print out how many urls will be checked in terminal
#  *script should only check properly formatted urls
#  *script needs to work with unlimited number of urls

# beyond the basics:
# 1. comment out any urls we don't want to check
# 2. print out number of urls that return 200 status
# 3. nicely formatted email
# 4. script can handle extra spaces in the file
# 5. print out number of other status codes (besides 200 & 404)
