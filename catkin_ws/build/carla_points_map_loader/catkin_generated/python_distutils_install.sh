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

echo_and_run cd "/home/carla/carla-autoware/catkin_ws/src/carla_points_map_loader"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/carla/carla-autoware/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/carla/carla-autoware/catkin_ws/install/lib/python2.7/dist-packages:/home/carla/carla-autoware/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/carla/carla-autoware/catkin_ws/build" \
    "/usr/bin/python2" \
    "/home/carla/carla-autoware/catkin_ws/src/carla_points_map_loader/setup.py" \
    build --build-base "/home/carla/carla-autoware/catkin_ws/build/carla_points_map_loader" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/carla/carla-autoware/catkin_ws/install" --install-scripts="/home/carla/carla-autoware/catkin_ws/install/bin"
