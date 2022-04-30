# frozen_string_literal: true

# faker_game_title_test.rb

require 'test/unit/assertions'
include Test::Unit::Assertions

require 'faker'

1000.times do
  assert_not_nil Faker::Game.title
end
