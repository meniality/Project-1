require_all 'lib'

class DirectMessage

  def self.message_main_menu
    puts "MESSAGE MENU".blue
    puts ""
    puts "1  -  Main Menu".red
    puts "2  -  View Received Messages".red
    puts "3  -  View Sent Messages".red
    puts "4  -  Send A New Message".red
    puts ""
    choice = gets.chomp
    if choice == "1"
      UserActions.main_menu
    elsif choice == "2"
      received_messages
    elsif choice == "3"
      sent_messages
    elsif choice == "4"
      send_new_message
    else
      puts "Not A Vaild Option".green
      message_main_menu
    end
  end

  def self.received_messages
    if $logged_in_user.reload.received_messages
      $logged_in_user.reload.received_messages.map do |message|
        puts "Received From: #{message.sender.name}"
        puts message.message
        puts ""
      end
      puts "1  -  Message Center".red
      puts "2  -  Main Menu".red
      puts ""
      choice = gets.chomp
      if choice == "1"
        message_main_menu
      elsif choice == "2"
        UserActions.main_menu
      else
        message_main_menu
      end
    else
      puts ""
      puts "No Messages".green
      puts ""
      puts "1  -  Message Center".red
      puts "2  -  Main Menu".red
      puts ""
      choice = gets.chomp
      if choice == "1"
        message_main_menu
      elsif choice == "2"
        UserActions.main_menu
      else
        message_main_menu
      end
    end
  end

  def self.sent_messages
    if $logged_in_user.sent_messages
      $logged_in_user.sent_messages.map do |message|
        puts "Sent To: #{message.receiver.name}"
        puts message.message
        puts ""
      end
      puts "1  -  Message Center".red
      puts "2  -  Main Menu".red
      puts ""
      choice = gets.chomp
      if choice == "1"
        message_main_menu
      elsif choice == "2"
        UserActions.main_menu
      else
        message_main_menu
      end
    else
      puts ""
      puts "No Messages".green
      puts ""
      puts "1  -  Message Center".red
      puts "2  -  Main Menu".red
      puts ""
      choice = gets.chomp
      if choice == "1"
        message_main_menu
      elsif choice == "2"
        UserActions.main_menu
      else
        message_main_menu
      end
    end
  end

  def self.send_new_message
    puts ""
    puts "Who Would You Like To Message?".green
    puts ""
    choice = gets.chomp
    receiver = Climber.all.find do |climber|
      climber.name == choice
    end
    if receiver
      puts "Please Enter Your Message"
      puts ""
      message = gets.chomp
      message = "#{message}\n#{Time.now}"
      Messages.create(message: message, sender: $logged_in_user, receiver: receiver)
      puts "Message Sent"
      message_main_menu
    else
      puts "That Is Not A Valid Climber"
      message_main_menu
    end
  end

end