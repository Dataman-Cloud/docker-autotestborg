FROM pybot:201704101137


COPY BORSP_api /BORSP_api

WORKDIR /BORSP_api

CMD ["pybot", "--include", "ha", "valid_cluster_manage.txt"]
