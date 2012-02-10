***************
Getting Started
***************

After reading this document you should be able to create a simple
rendered map using Python or C++.

TODO: add final rendered image


What do I need to get started?
==============================

First of all you need to install Mapnik library to your system. There
are to two basic ways to do it, you can either download binaries or
build library yourself from source. Installation from source if far more
complex and it documented in ..link to document...

Installation depends on your operating system and following sections
describe this process.

Windows installation
--------------------

Installing Mapnik on windows consists of following steps:

1. Install prerequisites
2. Download and unzip Mapnik binary
3. Set your system and/or users environment variables

Each of this steps is explained in detail ..here..!

Linux installation
------------------

Most modern Linux distributions include Mapnik binaries in their
repositories. Installation method depends your distribution:

* Ubuntu ::

  # sudo add-apt-repository ppa:mapnik/nightly-trunk
  # aptitude install libmapnik2

* Debian

  *Wheezy*:

  Directly bundled in distribution ::

  # apt-get install libmapnik2-2.0 mapnik-utils libmapnik2-2.0

  *Squeeze*:

  A backport was done from Wheezy version

  Follow instructions from http://osm.fsffrance.org/debian-backports/README to install

* Fedora

  For version 2, you will have to compile from source at the moment

* Archlinux

  See `mapnik wiki on Arch linux installation <https://github.com/mapnik/mapnik/wiki/ArchInstallation>`_


MacOSX installation
-------------------

Dane Springmeyer kindly hosts and builds MacOSX Mapnik binaries, you
can find more information on his download page
http://dbsgeo.com/downloads/.

Testing Mapnik installation
===========================

Easiest way to test if you have successfully installed and configured
Mapnik is to start up your Python interpreter and try to import mapnik
library: ::

   $ python
   Python 2.6.5 (r265:79063, Apr 16 2010, 13:09:56)
   [GCC 4.4.3] on linux2
   Type "help", "copyright", "credits" or "license" for more information.
   >>> import mapnik
   >>>

If there are no errors or complaints, you're on the right track. You
can also try to find out which Mapnik version you are currently
running by executing following code: ::

   >>> import mapnik
   >>> mapnik.mapnik_version_string()
   '2.0.0'
   >>>

If you don't get 2.x.x version, you will maybe need to make::

   >>> import mapnik2

This case, was to avoid namespace collision in python when mapnik 2.0 version wasn't the current version and users already get a 0.7.x version.

Now, that's it you are ready to create your first map using Python
scripting language.

