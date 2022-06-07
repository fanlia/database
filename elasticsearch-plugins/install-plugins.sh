target=`pwd`
elasticsearch-plugin install file:///tmp/elasticsearch-plugins/elasticsearch-analysis-ik-$version.zip --batch
elasticsearch-plugin install file:///tmp/elasticsearch-plugins/elasticsearch-analysis-stconvert-$version.zip --batch
if [ $version == "7.17.2" ]; then
    elasticsearch-plugin install file:///tmp/elasticsearch-plugins/analysis-hao-v$version.zip --batch
fi
