# frozen_string_literal: true

class Player
  attr_accessor :name, :role

  def initialize(name = nil, role = nil)
    @name = name
    @role = role
  end

  def ask_player_one_name(player)
    puts "Player 1 - What's is yor name?"
    player.name = gets.chomp
    player.name
  end

  def ask_player_two_name(player)
    puts "Player 2 - What's is yor name?"
    player.name = gets.chomp
    player.name
  end

  def ask_player_one_role(player)
    puts "#{player.name}, choose your role('x' or 'o'):"
    player.role = gets.chomp
    puts "#{player.name}, you will play with '#{player.role}'"
    player.role
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
