# -*- ruby -*-
#
# cracklib.rb - ruby bindings for cracklib
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

require 'ffi'

module CrackLib
  VERSION = '1.0.0'

  extend FFI::Library

  ffi_lib 'crack'
  attach_function :default_dict, :GetDefaultCracklibDict, [], :string
  attach_function :FascistCheck, [:string, :string], :string

  # Checks the password +pw+ using the cracklib dictionary at +dict_path+, and
  # returns a CrackLib::Fascist object with the result.
  def self.Fascist(pw, dict_path = default_dict)
    Fascist.new(pw, dict_path)
  end

  # Checks a given password and wraps the result. The password is checked when
  # an instance is created (e.g. <tt>Fascist.new('my_bad_password')</tt>). You
  # can check the result with Fascist#ok?. If the password is weak, the
  # reason given is available in +reason+.
  class Fascist

    # The reason why the checked password is weak.
    attr_reader :reason

    # Checks the password +pw+ using the cracklib dictionary at +dict_path+.
    def initialize(pw, dict_path = CrackLib.default_dict)
      @reason = CrackLib.FascistCheck(pw, dict_path)
    end

    # Returns false if the checked password was found to be weak, true
    # otherwise (but that doesn't _necessarily_ mean it's a strong password).
    def ok?
      @reason.nil?
    end
  end

end
