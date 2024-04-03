# frozen_string_literal: true

require 'test_helper'
class TestPowerAssert < ActiveSupport::TestCase
  test 'power_assert_failed' do
    assert { "0".class == "3".to_i.times.map {|i| i + 1 }.class }
  end
  test "test.rake is in the environment" do
    assert_equal('yes', ENV['test.rake'])
  end

  test "custom_task is in the environment" do
    assert_equal('yes', ENV['custom_task'])
  end
end
