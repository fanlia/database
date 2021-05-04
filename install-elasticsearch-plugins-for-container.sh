target=`pwd`
test -f elasticsearch-analysis-ik-$version.zip || wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v$version/elasticsearch-analysis-ik-$version.zip
elasticsearch-plugin install file://$target/elasticsearch-analysis-ik-$version.zip --batch
test -f elasticsearch-analysis-stconvert-$version.zip || wget https://github.com/medcl/elasticsearch-analysis-stconvert/releases/download/v$version/elasticsearch-analysis-stconvert-$version.zip
elasticsearch-plugin install file://$target/elasticsearch-analysis-stconvert-$version.zip --batch
