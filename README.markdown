#A simple test application for python-for-iphone#

The program presents a default black screen and serves an interactive python session on port 5000

before it will build, copy these directories from the built python-for-iphone project to this project

 * python-for-iphone/Python-2.6.5/_install/lib -> python-for-iphone-test/lib
 * python-for-iphone/Python-2.6.5/_install/include -> python-for-iphone-test/include

This is still very rough code and has many issues including:

 * Only works on an actual device due to an apple bug in the simulator
 * Dynamic libraries are still used for the extensions
 * No pyobjc support

