FROM nfcore/base:1.7
LABEL authors="Harshil Patel" \
      description="Docker image containing all requirements for nf-core/mnaseseq pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-mnaseseq-1.0dev/bin:$PATH
