# cardiotool

```
git clone --recursive https://github.com/toosyou/cardiotool.git
./build.sh
```

```
docker run --restart=always -d --name ct \
            -p 8081:8081 \
            -v /mnt/nas/Lab/cardiotool/saved_snps:/snps \
            --gpus '"device=0"' toosyou/cardiotool;
docker logs --follow ct
```