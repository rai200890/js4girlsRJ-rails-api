require 'thor/rails'
require 'roo'
class Contacts < Thor
  include Thor::Rails
  desc "import", "import contacts from a spreadsheet"
  def import(spreadsheet)
    require 'roo'
    ActiveRecord::Base.transaction do
      begin
        file = Roo::Spreadsheet.open(spreadsheet)
        contacts = []
        sheet = file.sheet(file.sheets.first)
        header = sheet.row(1)
        (2..sheet.last_row).each do |i|
          row = Hash[[header, sheet.row(i)].transpose]
          contacts << Contact.new(row)
        end
        Contact.import contacts
      rescue => e
        puts e.message
        raise ActiveRecord::Rollback
      end
    end
  end
end