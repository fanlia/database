
for version in 5.6.16 6.8.15
do
    echo $version elasticsearch${version%%.*}
    docker-compose exec -e version=${version} elasticsearch${version%%.*} sh /tmp/install-plugins.sh
    docker-compose restart elasticsearch${version%%.*}
done
