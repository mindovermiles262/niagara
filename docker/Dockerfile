FROM basinsights/nv4.12:1.0
ARG NIAGARA_VERSION="4.12.0.156"

# Let's give user 'niagara' a shell and a password for now (for debugging)
RUN usermod --shell /bin/bash niagara \
  && echo "niagara:niagara" | chpasswd

# Run the container as user 'niagara'. This elimiates the 
# "su -l niagara -c /bin/bash -c ..." hoops you were jumping through
USER niagara

# Set an ENV variable to make the CMD easier to read
ENV LD_LIBRARY_PATH="/opt/Niagara/Niagara-${NIAGARA_VERSION}/jre/lib/amd64:/opt/Niagara/Niagara-${NIAGARA_VERSION}/bin"

# Add niagrad to the PATH so we don't have to add the full path
ENV PATH="$PATH:/opt/Niagara/Niagara-${NIAGARA_VERSION}/bin"

# Run NiagaraD
CMD ["niagarad", "/console"]
