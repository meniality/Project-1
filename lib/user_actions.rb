require_all 'lib'

class UserActions

  $logged_in_user = ""

  def self.login
    puts "Enter email"
    email = gets.chomp
    climber = Climber.find_by(email: email)
    if climber
      puts "Enter password" 
      password = gets.chomp 
      if password == climber.password
        $logged_in_user= climber
        
        UserActions.main_menu
      else 
        puts "Try again" .green
        UserActions.login
      end  
    else
      puts "Climber does not exist".green
      UserActions.start_page
    end
    
  end  

  def self.start_page 
    puts "Welcome, Climber"
    puts""
    puts "1  -  login".red
    puts "2  -  create a new account".red
    choice = gets.chomp
      if choice == "1" 
        UserActions.login
      elsif choice == "2" 
        UserActions.create_account
      else puts "That was not a valid selection.".green
      start_page
    end
  end

  def self.create_account
    puts "Please enter your name"
    name = gets.chomp
    puts "Please enter a password"
    password1 = gets.chomp
    puts "Please verify password"
    password2 = gets.chomp
      if password1 == password2 
      else
      create_account
      end
    puts "Please enter your age"
    age = gets.chomp.to_i
    puts "Please enter your city"
    location = gets.chomp
    puts "Please enter your email"
    email = gets.chomp
    puts "please enter your phone number"
    phone_number = gets.chomp

    $logged_in_user = Climber.create(name: name, password: password1, age: age, location: location, email: email, phone_number: phone_number)
    main_menu
    
  end

  def self.main_menu
    puts ""
    puts "MAIN MENU".blue
    puts ""
    puts "1  -  View Your Profile".red
    puts "2  -  View All Climbers By Name".red
    puts "3  -  View Climbers By Location".red
    puts "4  -  Search Gear".red
    puts "5  -  View Mountains By Name".red
    puts ""
    puts "6  -  Message Center".red
    puts ""
    puts "7  -  Logout".red
    choice = gets.chomp
    if choice == "1"
      your_profile
    elsif choice == "2"
      view_climbers_by_name
    elsif choice == "3"
      view_climbers_by_location
    elsif choice == "4"
      find_climbers_by_gear
    elsif choice == "5"
      view_mountains_by_name
    elsif choice == "6"
      DirectMessage.message_main_menu
    elsif choice == "7"
      $logged_in_user = ""
      start_page
    else
      "Please choose a valid option".green
      main_menu
    end
  end
  


  def self.your_profile
    puts "Name: #{$logged_in_user.name}"
    puts "Password: ***********"
    puts "Age: #{$logged_in_user.age}"
    puts "Location: #{$logged_in_user.location}"
    puts "Email: #{$logged_in_user.email}"
    puts "Phone Number: #{$logged_in_user.phone_number}"
    puts "Mountians Climbed" 
      $logged_in_user.reload.mountains.map do |mountain|
        puts "    #{mountain.name}"
      end
    puts ""
    puts "1  -  Back to Main Menu".red
    puts "2  -  Update Information".red

    choice = gets.chomp
    
    if choice == "1"
      main_menu
    elsif choice == "2"
      update_profile_information
    else
      puts "Please choose a valid option".green
      your_profile
    end
  end

  def self.update_profile_information
    puts "Please Choose What You Would Like To Update"
    puts ""
    puts "1  -  Update Name".red
    puts "2  -  Update Password".red
    puts "3  -  Update Age".red
    puts "4  -  Update Location".red
    puts "5  -  Update Email".red
    puts "6  -  Update Phone Number".red
    puts "7  -  Update A Mountain Climbed".red
    puts "8  -  Back to Profile".red

    choice = gets.chomp

    if choice == "1"
      puts "Please Enter New Name"
      new_info = gets.chomp
      $logged_in_user.update(name: new_info)
      update_profile_information
    elsif choice == "2"
      puts ""
      update_profile_information
    elsif choice == "3"
      puts "Please Enter New Age"
      new_info = gets.chomp
      $logged_in_user.update(age: new_info)
      update_profile_information
    elsif choice == "4"
      puts "Please Enter New Location"
      new_info = gets.chomp
      $logged_in_user.update(location: new_info)
      update_profile_information
    elsif choice == "5"
      puts "Please Enter New Email"
      new_info = gets.chomp
      $logged_in_user.update(Email: new_info)
      update_profile_information
    elsif choice == "6"
      puts "Please Enter New Phone Number"
      new_info = gets.chomp
      $logged_in_user.update(phone_number: new_info)
      update_profile_information
    elsif choice == "7"
      make_climber_mountain
    elsif choice == "8"
      your_profile
    else 
      puts "Please Choose A Valid option".green
      update_profile_information
    end
  end

  def self.make_climber_mountain
    puts "Please Enter Name of Climbed Mountain"
    choice = gets.chomp
    found_mountain = Mountain.find do |mountain|
      mountain.name == choice
    end
    if found_mountain
      ClimberMountain.create(climber: $logged_in_user, mountain: found_mountain)
      update_profile_information
    else
      puts "That Is Not A Real Mountain".green
      update_profile_information
    end
  end



  def self.view_climbers_by_name
    Climber.all.map do |climber|
       puts climber.name
    end

    puts "1  -  Main Menu".red
    puts "2  -  View Climber Profile".red
    choice = gets.chomp
    if choice == "1"
      main_menu
    elsif choice == "2"
      view_climber_profile
    else "Please Choose A Valid Option".green
      view_climbers_by_name
    end
  end

  def self.view_climber_profile
    puts"Please Type Full Name Of Climber"
    climber_name = gets.chomp
    climber_object = Climber.all.find do |climber|
      climber.name == climber_name
    end
    puts "Name: #{climber_object.name}"
    puts "Age: #{climber_object.age}"
    puts "Location: #{climber_object.location}"
    puts "Email: #{climber_object.email}"
    puts "Phone Number: #{climber_object.phone_number}"
    puts "Mountains Climbed"
    climber_object.mountains.map do |mountain|
      puts "     #{mountain.name}"
    end
    puts ""
    puts "1  -  Main Menu".red
    puts "2  -  View Climber Profile".red
    puts "3  -  View Mountain Data".red
    puts "4  -  View All Climbers By Name".red
    choice = gets.chomp
    if choice == "1"
      main_menu
    elsif choice == "2"
      view_climber_profile
    elsif choice == "3"
      view_mountain_data
    elsif choice == "4"
      view_climbers_by_name
    else
      puts "Please Choose A Valid Option"
    end
  end

  def self.find_climbers_by_gear
    binding.pry
    puts "What gear are you looking for?"
    gear = gets.chomp
    list_of_gear = Gear.find_by(type: gear)
    puts "The following climbers have #{gear}"
    list_of_gear.each do |climber_gear|
      puts climber_gear.climber.name
    end  
  end  

  def self.view_climbers_by_location
    puts "Please enter the city"
    choice = gets.chomp
    climbers_in_location=Climber.select do |climber|
      climber.location == choice
    end
    climbers_in_location.map do |climber|
      puts climber.name
    end
    if climbers_in_location == nil
      puts "Not A Vaild City"
    else
    end
    puts "1  -  Main Menu".red
    puts "2  -  View Climber Profile".red
    puts "3  -  View Climbers By Different Location".red
    choice = gets.chomp
    if choice == "1"
      main_menu
    elsif choice == "2"
      view_climber_profile
    elsif choice == "3"
      view_climbers_by_location
    else
      main_menu
    end
  end

  def self.view_mountain_data
    puts "Please Enter Mounatains Name"
    choice = gets.chomp
    found_mountain = Mountain.all.find do |mountain|
      mountain.name == choice
    end
    if found_mountain
      puts "Name: #{found_mountain.name}"
      puts "Height: #{found_mountain.height}"
      puts "Easy Climbing Routes: #{found_mountain.easy_climbs}"
      puts "Medium Climbing Routes #{found_mountain.medium_climbs}"
      puts "Hard Climbing Routes #{found_mountain.hard_climbs}"
      puts ""
      puts "1  -  Main Menu".red
      puts "2  -  Enter New Mountains name".red
      choice = gets.chomp
        if choice == "1"
          main_menu
        elsif
          choice =="2"
          view_mountain_data
        else
          main_menu
        end
    else
      puts "Not a Valid Mountain".green
      puts "1  -  Main Menu".red
      puts "2  -  Enter New Mountains name".red
      choice = gets.chomp
      if choice == "1"
        main_menu
      elsif
        choice =="2"
        view_mountain_data
      else
        main_menu
      end
    end
  end


  def self.view_mountains_by_name  
    Mountain.all.map do |mountain|
      puts mountain.name
      end
    puts ""
    puts "1  -  Main Menu".red
    puts "2  -  View Mountain Data".red
    choice = gets.chomp
    if choice == "1"
      main_menu
    elsif choice == "2"
      view_mountain_data
    else 
      main_menu
    end
  end
  


end