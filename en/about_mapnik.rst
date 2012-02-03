******
Mapnik
******

What is mapnik?
===============

Mapnik is a Free Toolkit for developing mapping applications. It’s written
in C++ and there are Python bindings to facilitate fast-paced agile
development. It can comfortably be used for both desktop and web
development, which was something I wanted from the beginning.

Mapnik is about making beautiful maps. It uses the AGG library and offers world
class anti-aliasing rendering with subpixel accuracy for geographic data. It is
written from scratch in modern C++ and doesn’t suffer from design decisions
made a decade ago. When it comes to handling common software tasks such as
memory management, filesystem access, regular expressions, parsing and so on,
Mapnik doesn’t re-invent the wheel, but utilizes best of breed industry
standard libraries from http://boost.org


What is the history of the software ?
=====================================

Mapnik was started in a warm June afternoon in 2005 by Artem
Pavlenko.

Previous main version was 0.7.1. You can generate the outdated docs with Sphinx retrieving
`the package <https://github.com/ThomasG77/sphinx-docs/tags>`_.
Current version is 2.0.0 available for download at http://mapnik.org/download/.


Community
=========

Mapnik community is organized around `main site <http://mapnik.org>`_ and
`development site <http://github.com/mapnik/mapnik>`_ on which you can find
latest news about Mapnik and its development. Development site contains also
a `wiki <https://github.com/mapnik/mapnik/wiki>`_ which contains a lot of
useful information, and you can freely contribute if you `sign up on Github
<https://github.com/plans>`_.

You can find help throught `the mailing list
<http://groups.google.com/group/mapnik>`_ and `suscribe
<http://mapnik.org/contact/>`_ to it.
You should check `The archive <http://old.nabble.com/Mapnik-f28006.html>`_
before asking your question.

If you like more direct communication you can find us on **#mapnik** at
irc.freenode.net, feel free to drop in with your question anytime.

Which platforms does it run on?
===============================

Mapnik is a cross platform toolkit that runs on Windows, Mac, and Linux
(Since release 0.4). Users commonly run Mapnik on Mac >=10.4.x (both intel
and PPC), as well as Debian/Ubuntu, Fedora, Centos, OpenSuse, and FreeBSD.
If you run Mapnik on another Linux platform please add to the list on the
`Github wiki <https://github.com/mapnik/mapnik/wiki>`_

What data formats are supported?
================================

Mapnik uses a plugin architecture to read different datasources. Current plugins can read ESRI shapefiles, PostGIS, Sqlite, TIFF raster, OSM xml, Kismet, as well as all OGR/GDAL formats. More data access plug-ins will be available in the future. If you cannot wait and/or like coding in C++, why not write your own data access plug-in?


What are the plans for the future?
==================================

As always, there are lots of things in the pipeline. Look on the page `Future
features of Mapnik <https://github.com/mapnik/mapnik/wiki/Ideas_FutureMapnik>`_
and sign up for the `mapnik list <http://groups.google.com/group/mapnik>`_
to join the community discussion.

