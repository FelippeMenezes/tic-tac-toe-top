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
    puts "#{@name}, you will play with '#{@role}'"
    @role
  end

  def set_player_two_role(player_one, player_two)
    if player_one.role == "x"
      player_two.role = "o"
    else
      player_two.role = "x"
    end
    puts "#{player_two.name}, you will play with '#{player_two.role}'"
  end
end
