# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

ANT_TASK_JDKVER=1.5
ANT_TASK_JREVER=1.5
ANT_TASK_DEPNAME="xalan"

inherit ant-tasks-2

KEYWORDS="amd64 ppc64 x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"

DEPEND="dev-java/xalan:0
	dev-java/xalan-serializer:0"

RDEPEND="${DEPEND}"

src_unpack() {
	ant-tasks-2_src_unpack all
	java-pkg_jar-from xalan-serializer
}
