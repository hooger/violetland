# Default Target
all:					\
	build-debug			\
	build-release			\


build-debug:				\
	fedora24-amd64-gcc-debug	\
	fedora25-amd64-gcc-debug	\
	fedora26-amd64-gcc-debug	\
	fedora27-amd64-gcc-debug	\
					\
	xenial-amd64-gcc-debug		\
	zesty-amd64-gcc-debug		\
	artful-amd64-gcc-debug		\
					\
	windows-amd64-gcc-debug		\
	windows-i686-gcc-debug



build-release:				\
	fedora24-amd64-gcc-release	\
	fedora25-amd64-gcc-release	\
	fedora26-amd64-gcc-release	\
	fedora27-amd64-gcc-release	\
					\
	xenial-amd64-gcc-release	\
	zesty-amd64-gcc-release		\
	artful-amd64-gcc-release	\
					\
	windows-amd64-gcc-release	\
	windows-i686-gcc-release



# Supported Fedora versions
fedora24-amd64-gcc:
	mc fedora24-amd64-gcc ./execute-in-container.sh Debug
	mc fedora24-amd64-gcc ./execute-in-container.sh Release

fedora25-amd64-gcc:
	mc fedora25-amd64-gcc ./execute-in-container.sh Debug
	mc fedora25-amd64-gcc ./execute-in-container.sh Release

fedora26-amd64-gcc:
	mc fedora26-amd64-gcc ./execute-in-container.sh Debug
	mc fedora26-amd64-gcc ./execute-in-container.sh Release

fedora27-amd64-gcc:
	mc fedora27-amd64-gcc ./execute-in-container.sh Debug
	mc fedora27-amd64-gcc ./execute-in-container.sh Release


# Supported Ubuntu versions
xenial-amd64-gcc:
	mc xenial-amd64-gcc ./execute-in-container.sh Debug
	mc xenial-amd64-gcc ./execute-in-container.sh Release

zesty-amd64-gcc:
	mc zesty-amd64-gcc ./execute-in-container.sh Debug
	mc zesty-amd64-gcc ./execute-in-container.sh Release

artful-amd64-gcc:
	mc artful-amd64-gcc ./execute-in-container.sh Debug
	mc artful-amd64-gcc ./execute-in-container.sh Release


# We do not target specific Windows versions but instead a statically linked
# binary
windows-amd64-gcc:
	mc windows-amd64-gcc ./execute-in-container.sh Debug
	mc windows-amd64-gcc ./execute-in-container.sh Release

windows-i686-gcc:
	mc windows-i686-gcc ./execute-in-container.sh Debug
	mc windows-i686-gcc ./execute-in-container.sh Release

