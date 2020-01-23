require 'rest-client'
require 'json'
require 'csv'

Work.destroy_all

csv_text = File.read(Rails.root.join('lib', 'seeds', '../../GM_Coding_Exercise_Sample_Data.csv'))

csv = CSV.parse(csv_text, :headers => true)

csv.each do |row|
        Work.create ({
            date: row["Date"],
            client: row["Client"],
            project: row["Project"],
            projectCode: row["Project Code"],
            hours: row["Hours"],
            hoursRounded: row["Hours Rounded"],
            billable: row["Billable?"],
            firstName: row["First Name"],
            lastName: row["Last Name"],
            billableRate: row["Billable Rate"]
        }) #end of create
end #end of each

# Work.first.destroy
    