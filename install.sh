#docker run -d -p 9000:9000 --name minio \
#-e "MINIO_ACCESS_KEY=AKIAIOSFODNN7EXAMPLE" \
#  -e "MINIO_SECRET_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY" \
#minio/minio:edge server /data

velero install \
    --provider aws \
    --bucket velero \
    --secret-file ~/.credentials-velero \
    --use-volume-snapshots=true \
    --backup-location-config region=minio,s3ForcePathStyle="true",s3Url=http://minio.cloud.run9.io
