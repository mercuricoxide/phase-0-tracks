require 'sqlite3'

db = SQLite3::Database.new("reminders.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS reminders(
    id INTEGER PRIMARY KEY,
    action VARCHAR(255),
    to_be_completed_on DATETIME,
    remind_me_when VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

def create_reminder(db, action, to_be_completed_on, remind_me_when)
  db.execute("INSERT INTO reminders (action, to_be_completed_on, remind_me_when) VALUES ('#{action}', '#{to_be_completed_on}', '#{remind_me_when}')")
end

def display_reminders(db)
  puts "Your reminders:"
  puts "_______________"

  reminders = db.execute("SELECT * FROM reminders")

  reminders.each do |reminder|
    puts "Remember #{reminder['action']} on #{reminder['to_be_completed_on']}."
    puts "You will be alerted #{reminder['remind_me_when']}"
    puts "_______________"
  end
end



# user_interface

  puts "Welcome to Reminders!"
  puts "---------------------"

  options = ["1. Enter a New Reminder", "2. View Existing Reminders", "3. Exit Program"]

  loop do
    puts options
    puts "Select an option by number"
    selection = gets.chomp.to_i
    
    break if selection == 3
    
    if selection == 1
      puts "What do you want a reminder for?"
      action = gets.chomp
      puts "Enter the date for this reminder to be completed (ex. 2017-01-01 10:00:00)"
      to_be_completed_on = gets.chomp
      puts "When would like to be alerted about this reminder? Select a number: 1) 2 Hours before 2) 1 day before 3) 2 days before"
      remind_me_when = gets.chomp.to_i
        if remind_me_when == 1
          remind_me_when = "2 Hours Before"
        elsif remind_me_when == 2
          remind_me_when = "1 Day Before"
        else remind_me_when == 3
          remind_me_when == "2 Days Before"
        end
      
      create_reminder(db, action, to_be_completed_on, remind_me_when)

    else selection == 2
      display_reminders(db)
    end
  end

