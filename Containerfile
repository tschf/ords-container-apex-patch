FROM container-registry.oracle.com/database/ords:latest
ENV APEX_VER 24.1.0
RUN rm -rf /opt/oracle/apex/${APEX_VER}
COPY apex-latest/apex /opt/oracle/apex/${APEX_VER}
