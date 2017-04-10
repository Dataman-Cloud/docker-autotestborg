name=centos7-autotestborg
tag=`date +%Y%m%d%H%M`
opts="--no-cache"
docker build -f Dockerfile_pybot -t pybot:$tag .

cat > Dockerfile << EOF 
FROM pybot:$tag

COPY BORSP_api /BORSP_api

WORKDIR /BORSP_api

CMD ["pybot", "--include", "ha", "valid_cluster_manage.txt"]
EOF

docker build $opts -t $name:$tag .

echo "$name:$tag" > image_name.txt
