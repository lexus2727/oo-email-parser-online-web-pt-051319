# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser #class accepts a string of unformatted emails
  attr_accessor :csv_emails #setter/getter methods
  
  def initialize(csv_emails)
    @csv_emails = csv_emails
  end
  
  
def parse
  #scans emails to separate by comma and pulls out and returns unique emails only 
  csv_emails.split.collect do |address|  #the collect method will iterate and return an array
    address.split(',')
  end
  .flatten.uniq
 end
end

emails1 = "candiceparker2008@yahoo.com, per@er.org, Zappa@sugar.net, per@er.org" 
parser1 = EmailParser.new(emails1)
parser1.parse #returns array of unique emails in an array comma separated
