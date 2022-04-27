# frozen_string_literal: true

require 'test_helper'

class DebugGemExampleTest < Test::Unit::TestCase
  test 'VERSION' do
    assert do
      ::DebugGemExample.const_defined?(:VERSION)
    end
  end
end
