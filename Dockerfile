FROM node
LABEL author="Ruben Suarez <rubensa@gmail.com>"

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Configure apt and install packages
RUN apt-get update \
    && apt-get install -y apt-transport-https \
    # Add Chrome repo
    && curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && printf "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list \
    # Configure apt and install packages
    && apt-get update && apt-get install -y \
    # Google Chrome
    google-chrome-stable \
    --no-install-recommends \
    #
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=
