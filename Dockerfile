FROM continuumio/miniconda3
MAINTAINER Tru Huynh <tru@pasteur.fr>

RUN     conda update --yes -n base -c defaults conda && \
        conda update --yes --all 
RUN eval "$(/opt/conda/bin/conda shell.bash hook)" && \
        wget https://gricad-gitlab.univ-grenoble-alpes.fr/talks/fidle/-/raw/master/environments/fidle-gpu.yml && \
	conda env create -f fidle-gpu.yml && \
        date +"%Y-%m-%d-%H%M" > /last_update

