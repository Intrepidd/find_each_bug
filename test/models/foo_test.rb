require 'test_helper'

class FooTest < ActiveSupport::TestCase
  test 'find_each' do
    100.times do
      Foo.create
    end

    foos = []
    Foo.limit(10).find_each do
      foos << 'Here is one foo'
    end

    assert_equal 10, foos.size

  end
end
