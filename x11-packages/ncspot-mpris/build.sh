TERMUX_PKG_HOMEPAGE=https://github.com/hrkfdn/ncspot
TERMUX_PKG_DESCRIPTION="An ncurses Spotify client written in Rust (with MPRIS support)"
TERMUX_PKG_LICENSE="BSD 2-Clause"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.10.1"
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=https://github.com/hrkfdn/ncspot/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=7c2ed75bcf75d3da751bf6193b3a70266f41b953e840042b3a294f221a2d59a3
TERMUX_PKG_DEPENDS="dbus, pulseaudio"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BUILD_IN_SRC=true

TERMUX_PKG_CONFLICTS="ncspot"

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--no-default-features
--features cursive/termion-backend,share_clipboard,pulseaudio_backend,mpris,notify
"
# NOTE: ncurses-rs runs a test while building which fails while cross compiling:
# therefore, we use cursive/termion-backend instead.
