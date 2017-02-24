# -*- ruby -*-
#
# test_cracklib.rb - tests for ruby bindings for cracklib
#
# Copyright (c) 2010 Kevin R. Bullock
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

require "test/unit"
require "shoulda"
require "mocha"
require "cracklib"

class TestCrackLib < Test::Unit::TestCase
  should "define CrackLib" do
    assert_nothing_raised { CrackLib }
  end

  context "default_dict" do
    should "return default cracklib dictionary path" do
      assert(result = CrackLib.default_dict)
      assert !result.empty?
    end
  end

  context "FascistCheck()" do
    should "work using the default dictionary" do
      assert_nothing_raised {
        CrackLib.FascistCheck('foobar', CrackLib.default_dict)
      }
    end
  end

  context "Fascist()" do
    should "accept alternate dictionary path" do
      path = "/path/to/pw_dict"
      CrackLib.expects(:FascistCheck).with('foobar', path).returns(nil)
      assert_nothing_raised { CrackLib::Fascist('foobar', path) }
    end

    should "not require dictionary path" do
      assert_nothing_raised { CrackLib::Fascist('foobar') }
    end

    should "return a CrackLib::Fascist" do
      assert CrackLib::Fascist === CrackLib::Fascist('foobar')
    end
  end

  context "Fascist" do
    context ".new" do
      should "accept alternate dictionary path" do
        path = "/path/to/pw_dict"
        CrackLib.expects(:FascistCheck).with('foobar', path).returns(nil)
        assert_nothing_raised { CrackLib::Fascist.new('foobar', path) }
      end

      should "not require dictionary path" do
        assert_nothing_raised { CrackLib::Fascist.new('foobar') }
      end
    end

    context "with strong password" do
      setup do
        CrackLib.expects(:FascistCheck).returns(nil)
        @fascist = CrackLib::Fascist('foobar')
      end

      context "#ok?" do
        should "return true" do
          assert @fascist.ok?
        end
      end

      context "reason" do
        should "return nil" do
          assert @fascist.reason.nil?
        end
      end
    end

    context "with weak password" do
      setup do
        @reason = "it is weak"
        CrackLib.expects(:FascistCheck).returns(@reason)
        @fascist = CrackLib::Fascist('foobar')
      end

      context "#ok?" do
        should "return false" do
          assert !@fascist.ok?
        end
      end

      context "reason" do
        should "return the reason" do
          assert_equal @reason, @fascist.reason
        end
      end
    end
  end
end
