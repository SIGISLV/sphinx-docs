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

1. Install system prerequisites

Because Mapnik binary was built using with Visual C++ 2008 Express, 
it requires vc90 runtime. To solve this, go to download 
the C++ runtimes from `microsoft website <http://www.microsoft.com/en-us/download/details.aspx?id=5582>`_
and install it.

2. Install Python 2.7

Always because of the build, provided python bindings support for now 
just Python version 2.7 32 bit (not 64 bit) which can be downloaded from 
`official Python website <http://www.python.org/ftp/python/2.7.3/python-2.7.3.msi>`_ 
Install it.
Now you have to install python to your path (it means you will have 
access to python throught DOS command line)
For this, steps to follow are:

* right-click "My Computer" and click "Properties".
* in "System Properties" window, click on the "Advanced" tab.
* from "Advanced section", click on "Environment Variables".
* in "Environment Variables" window, click on the "Path" variable in the "Systems Variable" section.
* after, click on "Edit".
* at the end of "Path", add ``;c:\Python27;C:\Python27\Scripts``, click "Ok"
* open a new command line and type "python" to confirm it works and go out typing "exit()"

3. Download, unzip and configure Mapnik binary

Go to retrieve `the binary <https://github.com/downloads/mapnik/mapnik/mapnik-2.0.1rc0.zip>`_
and simply unzip the archive into ``c:/mapnik-2.0.1rc0``

Set your system and/or users environment variables for Mapnik:

* set system "Path" adding at the end ``;c:\mapnik-2.0.1rc0\lib`` like you've done for Python

* launch a new DOS command line and then you should be able to run the demo program: ::

      cd c:\mapnik-2.0.1rc0\demo\c++
      rundemo ..\..\lib\mapnik

* You'll get something like this ::
  
      running demo ...
      looking for 'shape.input' plugin in... ..\..\lib\mapnik/input/
      looking for DejaVuSans font in... ..\..\lib\mapnik/fonts/DejaVuSans.ttf
      Three maps have been rendered using AGG in the current directory:
      - demo.jpg
      - demo.png
      - demo256.png
      - demo.tif
      Have a look!
      Three maps have been rendered using Cairo in the current directory:
      - cairo-demo.png
      - cairo-demo256.png
      - cairo-demo.pdf
      - cairo-demo.svg
      Have a look!

* set mapnik python environment

You also have to use the python bindings to enable them adding a new 
system environment variable called PYTHONPATH and affect it ``c:\mapnik-2.0.1rc0\python\2.7\site-packages;``

Then you should be able to run the python demo after you open a new DOS shell:
::
    cd c:\mapnik-2.0.1rc0\demo\python
    python rundemo.py


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

This case, was to avoid namespace collision in python when mapnik 2.0 
version wasn't the current version and users already get a 0.7.x version.

Now, that's it you are ready to create your first map using Python
scripting language.

