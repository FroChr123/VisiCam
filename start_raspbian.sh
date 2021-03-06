#!/bin/bash

#    This file is part of VisiCam. (https://github.com/t-oster/VisiCam)
#
#    VisiCam is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Lesser General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    VisiCam is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU Lesser General Public License
#    along with VisiCam.  If not, see <http://www.gnu.org/licenses/>.

# Change working directory to local directory
cd "$(dirname $0)"

# Start VisiCam
if [ -e "/etc/init.d/visicam" ]
then
    service visicam start
else
    java -jar dist/VisiCam.jar
fi
