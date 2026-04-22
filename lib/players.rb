# frozen_string_literal: true

class Player
  attr_accessor :name, :role

  def initialize(name = nil, role = nil)
    @name = name
    @role = role
  end

  def ask_player_one_name
    puts "Player 1 - What's is yor name?"
    @name = gets.chomp
  end

  def ask_player_two_name
    puts "Player 2 - What's is yor name?"
    @name = gets.chomp
  end

  def ask_player_one_role
    puts "#{@name}, choose your role('x' or 'o'):"
    @role = gets.chomp
    puts @role.class
    if @role != "x" && @role != "o"
      puts "Wrong choice, try again!"
      ask_player_one_role
    else
      puts "#{@name}, you will play with '#{@role}'"
    end
    @role
  end

  def set_player_two_role(player_one)
    if player_one.role == "x"
      @role = "o"
    else
      @role = "x"
    end
    puts "#{@name}, you will play with '#{@role}'"
  end
end
