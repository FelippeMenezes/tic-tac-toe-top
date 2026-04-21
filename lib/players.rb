# frozen_string_literal: true

class Player
  attr_accessor :name, :role

  def initialize(name, role)
    @name = name
    @role = role
  end
end
