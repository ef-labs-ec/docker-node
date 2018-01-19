FROM efec/git:2.7.4

LABEL maintainer="efec/node Docker Maintainers <li.jun.kuma@gmail.com>"

# Install node
RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash && \
    export NVM_DIR="$HOME/.nvm" && \
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && \
    nvm install 6.3.0

# Define default command.
CMD ["/bin/bash"]