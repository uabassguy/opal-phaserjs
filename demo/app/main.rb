require 'opal'
require 'opal/phaser'

class Game
  def initialize
    @phaser = Phaser::Game.new(800, 654) do |state|
      state.preload do |game|
        game.load.image('logo', 'phaser.png')
      end

      state.create do |game|
        game.add.sprite(game.world.centerX, game.world.centerY, 'logo')
      end
    end
  end
end