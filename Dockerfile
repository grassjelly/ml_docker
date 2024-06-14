FROM mambaorg/micromamba:jammy-cuda-12.1.1
USER root

WORKDIR /app

COPY environment.yml .
RUN micromamba install -n base -f environment.yml && \
    micromamba clean --all --yes

COPY . /app/