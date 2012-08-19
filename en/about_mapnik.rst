
******
Mapnik
******

Mapnik is a Free Toolkit for developing mapping applications.
It’s written in C++ and there are Python bindings to facilitate 
fast-paced agile development. It can comfortably be used for both 
desktop and web development, which was something I wanted from the 
beginning.

Mapnik is about making beautiful maps. It uses the AGG library and 
offers world class anti-aliasing rendering with subpixel accuracy for 
geographic data. It is written from scratch in modern C++ and doesn’t 
suffer from design decisions made a decade ago. When it comes to 
handling common software tasks such as memory management, filesystem 
access, regular expressions, parsing and so on, Mapnik doesn’t 
re-invent the wheel, but utilizes best of breed industry standard 
libraries from boost.org


History
=======

Mapnik was started in a warm June afternoon in 2005 by Artem
Pavlenko. An overview of global project advancement can be visualize 
reading Mapnik project `closed milestones <https://github.com/mapnik/mapnik/issues/milestones?state=closed>`_

Previous main version was 0.7.1. You can generate the outdated docs 
with Sphinx retrieving `the package <https://github.com/ThomasG77/sphinx-docs/tags>`_.
Current version is Mapnik 2.0.2. available for download at http://mapnik.org/download/.


Community
=========

Mapnik community is organized around main site http://mapnik.org and
development site https://github.com/mapnik/mapnik/ on which you can find latest
news about Mapnik and its development. Development site is organized
like a wiki which contains a lot of useful information, and you can
freely contribute if you `sign in <https://github.com/signup/free>`_ to Github.

Both users and developers can ask questions on Google group `mapnik <https://groups.google.com/forum/#!forum/mapnik>`_ 
Users and developers mailing list were hosted at `Berlios <http://lists.berlios.de/>`_ from Feb. 2006 to Nov. 2011   
Before asking questions, you can search old archives using `Nabble <http://old.nabble.com/Mapnik-f28006.html>`_ 
or directly into the Google group for recents topics. 

If you like more direct communication you can find us on **#mapnik** at
irc.freenode.net, feel free to drop in with your question anytime.

Platforms
=========

Mapnik is a cross platform toolkit that runs on Windows, Mac, and
Linux (since release 0.4). Users commonly run Mapnik on Mac >=10.4.x
(both intel and PPC), as well as Debian/Ubuntu, Fedora, Centos,
OpenSuse, and FreeBSD. 

Supported data formats
======================

Mapnik uses a plugin architecture to read different
datasources. Current plugins can read ESRI shapefiles, PostGIS, TIFF 
raster, OSM xml, Kismet, as well as all OGR/GDAL formats. More data 
access plug-ins will be available in the future. If you cannot wait 
and/or like coding in C++, why not write your own data access plug-in?

Future
======

As always, there are lots of things in the pipeline. 
Large number of developers and contributors are actively developing
*mapnik 2.1.x* series. 
Look on the page `Future features of Mapnik <https://github.com/mapnik/mapnik/wiki/Ideas_FutureMapnik>`_
and sign up for the `mapnik list <http://groups.google.com/group/mapnik>`_
to join the community discussion. You can also follow `Mapnik news 
<http://mapnik.org/news/>`_ to get latest hot features in the pipe.
