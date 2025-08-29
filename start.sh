#!/bin/bash
#java -cp ./sink-connector-lightweight/target/clickhouse-debezium-embedded-0.0.4.jar com.altinity.clickhouse.debezium.embedded.ClickHouseDebeziumEmbeddedApplication config.yml -Dlog4j2.configurationFile=log4j2.xml > logs

java -Xlog:gc*:file=gc.log:time,level,tags:filecount=10,filesize=100m -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005 -Xms4g -Xmx12g -Dlog4j2.configurationFile=log4j2.xml -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.port=39999 -jar ./sink-connector-lightweight/target/clickhouse-debezium-embedded-0.0.4.jar config.yml com.altinity.clickhouse.debezium.embedded.ClickHouseDebeziumEmbeddedApplication > logs
