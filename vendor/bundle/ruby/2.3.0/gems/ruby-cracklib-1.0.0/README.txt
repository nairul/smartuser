= ruby-cracklib

* http://bitbucket.org/krbullock/ruby-cracklib
* http://rubyforge.org/projects/handtools

== DESCRIPTION:

Ruby (FFI) binding for cracklib.

== FEATURES/PROBLEMS:

* Provides a simple Ruby binding to the cracklib password-checking library.

* Be sure you install cracklib with a sufficiently large dictionary!

== SYNOPSIS:

    >> require 'cracklib'
    >> c = CrackLib::Fascist('foobar')
    >> c.ok?
    => false
    >> c.reason
    => "it is based on a dictionary word"

== REQUIREMENTS:

* cracklib[http://sourceforge.net/projects/cracklib/] 2.8.15+
* ffi[http://wiki.github.com/ffi/ffi/]

== INSTALL:

    $ gem install ruby-cracklib

== LICENSE:

(Lesser GPL v2.1)

Copyright (c) 2010 Kevin R. Bullock

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
