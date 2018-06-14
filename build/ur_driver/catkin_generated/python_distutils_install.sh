#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/aadityacr7/gsoc_2018/src/universal_robot/ur_driver"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/aadityacr7/gsoc_2018/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/aadityacr7/gsoc_2018/install/lib/python2.7/dist-packages:/home/aadityacr7/gsoc_2018/build/ur_driver/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/aadityacr7/gsoc_2018/build/ur_driver" \
    "/usr/bin/python" \
    "/home/aadityacr7/gsoc_2018/src/universal_robot/ur_driver/setup.py" \
    build --build-base "/home/aadityacr7/gsoc_2018/build/ur_driver" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/aadityacr7/gsoc_2018/install" --install-scripts="/home/aadityacr7/gsoc_2018/install/bin"
