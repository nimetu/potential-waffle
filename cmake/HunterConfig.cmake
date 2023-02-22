#hunter_config(OpenSSL
#  VERSION "3.0.8"
#  URL "https://github.com/openssl/openssl/archive/refs/tags/openssl-3.0.8.tar.gz"
#  SHA1 "49816d51f0c4e306f72a6928780d3fb2815d05ac"
#  )
hunter_config(OpenSSL
  VERSION "3.0.0"
  URL "https://github.com/openssl/openssl/archive/refs/tags/openssl-3.0.0.tar.gz"
  SHA1 "8c67882a8c7acd73a6400bc154c7b8a9de67a41e"
)

# TODO: static/shared builds
hunter_config(msquic
  VERSION "2.1.7"
  URL "https://github.com/microsoft/msquic/archive/refs/tags/v2.1.7.tar.gz"
  SHA1 "25e2e9a23d74984cb8609a5b88ef9abc5caef23e"
  CMAKE_ARGS
  QUIC_BUILD_SHARED=OFF
  QUIC_USE_SYSTEM_LIBCRYPTO=ON
  )


