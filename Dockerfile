# texlive environment

FROM lance0312/archlinux
MAINTAINER Lance Chen <cyen0312@gmail.com>

# Make use of the fastest mirror site
RUN cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
RUN rankmirrors -n 10 /etc/pacman.d/mirrorlist.bak > /etc/pacman.d/mirrorlist

# Install texlive-related packages
RUN pacman -S --quiet --noconfirm texlive-most texlive-langcjk
