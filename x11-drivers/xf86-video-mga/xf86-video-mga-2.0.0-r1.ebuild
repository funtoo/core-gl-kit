# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools linux-info flag-o-matic 

DESCRIPTION="Driver for xorg-server"
KEYWORDS="*"
IUSE=" "
SRC_URI="https://gitlab.freedesktop.org/xorg/driver/xf86-video-mga/-/archive/xf86-video-mga-2.0.0/xf86-video-mga-xf86-video-mga-2.0.0.tar.bz2 -> xf86-video-mga-2.0.0-gitlab.tar.bz2"
SLOT="0"
S="$WORKDIR/${PN}-${P}"

DEPEND="
	x11-base/xorg-proto
	>=sys-devel/libtool-2.2.6a
	sys-devel/m4
	>=x11-misc/util-macros-1.18
	
"

RDEPEND="
	${DEPEND}x11-libs/libpciaccess
	
"

WANT_AUTOCONF="latest"
WANT_AUTOMAKE="latest"
AUTOTOOLS_AUTORECONF="1"

src_configure() {
	XORG_CONFIGURE_OPTIONS=(
		$(use_enable dri)

	)
	append-ldflags -Wl,-z,lazy
	eautoreconf || die
	econf ${XORG_CONFIGURE_OPTIONS[@]} || die
}

src_install() {
	default
	find "${D}" -type f -name '*.la' -delete || die
}