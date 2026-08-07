#!/usr/bin/env bash

xfce() {
	unset DBUS_SESSION_BUS_ADDRESS
	unset SESSION_MANAGER
	export GALLIUM_DRIVER=zink
	export MESA_GL_VERSION_OVERRIDE=4.3
	dbus-launch --exit-with-session xfce4-session
}
