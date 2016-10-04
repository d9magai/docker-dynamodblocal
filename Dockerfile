FROM java:9-jre
MAINTAINER d9magai

RUN curl -sL http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz | tar xz \
    &&  rm -rf LICENSE.txt README.txt third_party_licenses/

ENTRYPOINT ["java", "-Djava.library.path=./DynamoDBLocal_lib", "-jar", "DynamoDBLocal.jar", "-sharedDb"]

