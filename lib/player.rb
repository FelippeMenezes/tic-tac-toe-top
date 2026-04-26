# frozen_string_literal: true

require 'colorize'

# This class is a game of Tic-Tac-Toe.
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
    puts "#{@name.colorize(:yellow)}, choose your role('x' or 'o'):"
    @role = gets.chomp
    puts @role.class
    if @role != 'x' && @role != 'o'
      puts 'Wrong choice, try again!'
      ask_player_one_role
    else
      puts "#{@name.colorize(:yellow)}, you will play with '#{@role.colorize(:yellow)}'"
    end
    @role
  end

  def choose_player_two_role(player_one)
    @role = if player_one.role == 'x'
              'o'
            else
              'x'
            end
    puts "#{@name.colorize(:green)}, you will play with '#{@role.colorize(:green)}'"
  end
end
