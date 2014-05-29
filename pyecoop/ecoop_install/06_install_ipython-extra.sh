#!/bin/bash

###############################################################################
#
#
# Project: ECOOP, sponsored by The National Science Foundation
# Purpose: this code is part of the Cyberinfrastructure developed for the ECOOP project
#                http://tw.rpi.edu/web/project/ECOOP
#                from the TWC - Tetherless World Constellation
#                            at RPI - Rensselaer Polytechnic Institute
#                            founded by NSF
#
# Author:   Massimo Di Stefano , distem@rpi.edu -
#                http://tw.rpi.edu/web/person/MassimoDiStefano
#
###############################################################################
# Copyright (c) 2008-2014 Tetherless World Constellation at Rensselaer Polytechnic Institute
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.
###############################################################################


PREFIX=/home/$USER/Envs/env1

echo "install mpld3"
git clone https://github.com/jakevdp/mpld3.git
cd mpld3
$PREFIX/bin/python setup.py install
rm -rf build
cd $TEMPBUILD
mv mpld3 $TEMPBUILD/src

#https://github.com/jakevdp/ipywidgets.git
git clone https://github.com/jakevdp/ipywidgets.git
cd ipywidgets
$PREFIX/bin/python setup.py install
rm -rf build
cd $TEMPBUILD
mv ipywidgets $TEMPBUILD/src



git clone https://github.com/epmoyer/ipy_table.git
cd ipy_table
$PREFIX/bin/python setup.py install
rm -rf build
cd $TEMPBUILD
mv ipy_table $TEMPBUILD/src

# think about ipython extension / profiles (grass binding, network interfaces)
#

git clone https://github.com/ContinuumIO/bokeh.git
cd bokeh
$PREFIX/bin/python setup.py install
cd ..
mv bokeh $TEMPBUILD/src