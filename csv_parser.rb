require 'rspec'

def csv_parser file_path
  lines = File.read(file_path).split(/\r\n/).map do |line|
    line.split(',')
  end
end

describe 'CSV Parser' do
  it 'parses a CSV file and stores each line as an array, with each column as a separate element in the array' do
   final_data = [["Name", "Title", "Email"], ["Darth Vader", "CEO", "betterthan@theforce.com"], ["Luke Skywalker", "Dev", "daddy@issues.com"], ["Kylo Ren", "COO", "daddy2@issues.com"]]
   expect(csv_parser('support/crm.csv')).to eq(final_data)
  end
end





#system should take a file in the support directory-
#each item seperated in the array
#method is csv parser_impect simply to pass in a path to csv-supprt directory and parse the data
#create a variable called lines and open the file-read takes in a regualr path
#now split the on a line per line basis
#call the split method twice-because we want an array with an array inside it
#(r is carrage return) its goign to find csv then load it in, and then into a new element
#split allowws us to call other methods now on top of it..
#use map.. and map on each line
#then run rspec
#                   CSV means comma seperated
# EXAMPLE DATA BELOW
#[
 # ["Name", "Title", "Email"],
 # ["Darth Vader", "CEO", "betterthan@theforce.com"],
  #["Luke Skywalker", "Dev", "daddy@issues.com"],
 # ["Kylo Ren", "COO", "daddy2@issues.com"],
#]
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#