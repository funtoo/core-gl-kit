# Distributed under the terms of the GNU General Public License v2

EAPI=7
VIRTUALX_REQUIRED="test"
inherit flag-o-matic meson virtualx

DESCRIPTION="VDPAU wrapper and trace libraries"
HOMEPAGE="https://www.freedesktop.org/wiki/Software/VDPAU"
SRC_URI="https://gitlab.freedesktop.org/vdpau/${PN}/-/archive/${PV}/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="doc dri"

RDEPEND=">=x11-libs/libX11-1.6.2
	dri? ( >=x11-libs/libXext-1.3.2 )
	!=x11-drivers/nvidia-drivers-180*
	!=x11-drivers/nvidia-drivers-185*
	!=x11-drivers/nvidia-drivers-190*"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	doc? (
		app-doc/doxygen
		media-gfx/graphviz
		virtual/latex-base
		)
	dri? ( x11-base/xorg-proto )"

src_prepare() {
	sed -i -e "/^docdir/s|${PN}|${PF}|g" doc/meson.build || die
	default
}

src_configure() {
	append-cppflags -D_GNU_SOURCE
	local emesonargs=(
		-Ddri2=$(usex dri true false)
		-Ddocumentation=$(usex doc true false)
	)
	meson_src_configure
}

src_install() {
	meson_src_install
	find "${ED}" -name '*.la' -delete || die
}
