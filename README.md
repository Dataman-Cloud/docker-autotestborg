# docker-autotestborg
自动化设置borgsphere镜像

## 使用方法

```
PYBOT_VARIABLES="
         --variable SERVER:$SRY_SERVER \
         --variable USERNAME:$SSH_USER \
         --variable PASSWORD:$SSH_PASSWD \
         --variable adminname:$SRY_ADMIN_USER \
         --variable adminpasswd:$SRY_ADMIN_PASSWD"

docker run -it $AUTOTESTBORG_IMAGE pybot $PYBOT_VARIABLES --include ha valid_cluster_manage_v2.txt

```
其中 valid_cluster_manage_v2.txt 为测试用户文件，可以替换为其它


