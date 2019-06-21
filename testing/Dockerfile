FROM brettviren/ptmp-deb
MAINTAINER Brett Viren <brett.viren@gmail.com>


ARG username=testing
RUN useradd --create-home --home-dir /home/${username} ${username}
ENV HOME /home/${username}
ENV PATH=/home/${username}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
USER ${username}
WORKDIR /home/${username}

CMD git clone --depth 1 https://github.com/brettviren/ptmp.git \
 && cd ptmp \
 && python3 ./waf configure --prefix=$HOME \
 && python3 ./waf --notests install \
 && python3 ./waf --alltests -j1 \
 && python3 ./waf clean



