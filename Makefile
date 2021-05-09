
all: 
	cat $(PWD)/list.txt | parallel --max-args=2 $(PWD)/docker-push-to-mirror.sh

postgis:
	$(PWD)/docker-push-to-mirror.sh postgis/postgis registry.cn-hangzhou.aliyuncs.com/opengis/postgis

gdal:
	$(PWD)/docker-push-to-mirror.sh osgeo/gdal registry.cn-hangzhou.aliyuncs.com/opengis/gdal

qgis:
	$(PWD)/docker-push-to-mirror.sh qgis/qgis registry.cn-hangzhou.aliyuncs.com/opengis/qgis

geonetwork:
	$(PWD)/docker-push-to-mirror.sh geonetwork registry.cn-hangzhou.aliyuncs.com/opengis/geonetwork

elasticsearch:
	$(PWD)/docker-push-to-mirror.sh elasticsearch registry.cn-hangzhou.aliyuncs.com/opengis/elasticsearch

kibana:
	$(PWD)/docker-push-to-mirror.sh kibana registry.cn-hangzhou.aliyuncs.com/opengis/kibana

redis:
	$(PWD)/docker-push-to-mirror.sh redis registry.cn-hangzhou.aliyuncs.com/opengis/redis

logstash:
	$(PWD)/docker-push-to-mirror.sh logstash registry.cn-hangzhou.aliyuncs.com/opengis/logstash

mysql:
	$(PWD)/docker-push-to-mirror.sh mysql registry.cn-hangzhou.aliyuncs.com/opengis/mysql

mongo:
	$(PWD)/docker-push-to-mirror.sh mongo registry.cn-hangzhou.aliyuncs.com/opengis/mongo

