name=library/centos7-autotestborg
#tag=`date +%Y%m%d%H%M`
opts="--no-cache"
docker build -f Dockerfile_pybot -t pybot .

cat > Dockerfile_runtime << EOF 
FROM pybot

COPY BORSP_api /BORSP_api

WORKDIR /BORSP_api

CMD ["pybot", "--include", "ha", "valid_cluster_manage.txt"]
EOF

docker build $opts -f Dockerfile_runtime -t $name .

echo "$name" > image_name.txt
