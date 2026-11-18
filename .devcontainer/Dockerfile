FROM mcr.microsoft.com/devcontainers/python:3-3.15-trixie

ENV PYTHONUNBUFFERED 1

USER root
# Install uv and uvx from the Astral SH container registry
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/
COPY --from=ghcr.io/casey/just:latest /just /usr/local/bin/


# [Optional] If your requirements rarely change, uncomment this section to add them to the image.
# COPY requirements.txt /tmp/pip-tmp/
# RUN pip3 --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt \
#    && rm -rf /tmp/pip-tmp

# [Optional] Uncomment this section to install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y --no-install-recommends postgresql-client && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN pip install --upgrade pip
RUN curl -s https://install.duckdb.org | bash
#     && apt-get -y install --no-install-recommends <your-package-list-here>




