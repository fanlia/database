
cd elasticsearch-plugins

for version in 5.6.8 6.8.16 7.16.2
do
    echo $version elasticsearch${version%%.*}
    test -f elasticsearch-analysis-ik-$version.zip || wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v$version/elasticsearch-analysis-ik-$version.zip
    test -f elasticsearch-analysis-stconvert-$version.zip || wget https://github.com/medcl/elasticsearch-analysis-stconvert/releases/download/v$version/elasticsearch-analysis-stconvert-$version.zip
    sudo docker-compose exec -e version=${version} elasticsearch${version%%.*} sh /tmp/elasticsearch-plugins/install-plugins.sh
    sudo docker-compose restart elasticsearch${version%%.*}
done
