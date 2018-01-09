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
fedora24-amd64-gcc-debug:
	mc fedora24-amd64-gcc ./execute-in-container.sh Debug

fedora24-amd64-gcc-release:
	mc fedora24-amd64-gcc ./execute-in-container.sh Release


fedora25-amd64-gcc-debug:
	mc fedora25-amd64-gcc ./execute-in-container.sh Debug

fedora25-amd64-gcc-release:
	mc fedora25-amd64-gcc ./execute-in-container.sh Release


fedora26-amd64-gcc-debug:
	mc fedora26-amd64-gcc ./execute-in-container.sh Debug

fedora26-amd64-gcc-release:
	mc fedora26-amd64-gcc ./execute-in-container.sh Release


fedora27-amd64-gcc-debug:
	mc fedora27-amd64-gcc ./execute-in-container.sh Debug

fedora27-amd64-gcc-release:
	mc fedora27-amd64-gcc ./execute-in-container.sh Release



# Supported Ubuntu versions
xenial-amd64-gcc-debug:
	mc xenial-amd64-gcc ./execute-in-container.sh Debug

xenial-amd64-gcc-release:
	mc xenial-amd64-gcc ./execute-in-container.sh Release


zesty-amd64-gcc-debug:
	mc zesty-amd64-gcc ./execute-in-container.sh Debug

zesty-amd64-gcc-release:
	mc zesty-amd64-gcc ./execute-in-container.sh Release


artful-amd64-gcc-debug:
	mc artful-amd64-gcc ./execute-in-container.sh Debug

artful-amd64-gcc-release:
	mc artful-amd64-gcc ./execute-in-container.sh Release



# We do not target specific Windows versions but instead a statically linked
# binary
windows-amd64-gcc-debug:
	mc windows-amd64-gcc ./execute-in-container.sh Debug

windows-amd64-gcc-release:
	mc windows-amd64-gcc ./execute-in-container.sh Release


windows-i686-gcc-debug:
	mc windows-i686-gcc ./execute-in-container.sh Debug

windows-i686-gcc-release:
	mc windows-i686-gcc ./execute-in-container.sh Release

