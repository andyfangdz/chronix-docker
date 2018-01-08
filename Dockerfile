FROM solr:6.4.2

ENV SOLR_USER="solr" \
    SOLR_UID="8983" \
    SOLR_GROUP="solr" \
    SOLR_VERSION="6.4.2"

ADD --chown=solr:solr ./chronix /opt/solr/server/solr/mycores 

EXPOSE 8983
WORKDIR /opt/solr
USER $SOLR_USER

