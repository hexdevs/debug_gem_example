# frozen_string_literal: true

require 'test_helper'
require 'faker'

class FakerGameTest < Test::Unit::TestCase
  test '#title should not be nil' do
    assert_equal(Faker::Game.title.nil?, false)
  end

  test '#title should not be nil on multiple calls' do
    1_000.times do
      assert_equal(Faker::Game.title.nil?, false)
    end
  end
end
