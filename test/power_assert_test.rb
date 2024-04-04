# frozen_string_literal: true

require 'test_helper'
class TestPowerAssert < ActiveSupport::TestCase
  test 'power_assert_failed' do
    assert true
    assert_equal 'expected'.class, 'actual'.class
  end
end
