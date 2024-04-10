cd /home/user/PROJECTS/oss-fuzz

#docker builder prune -af
rm -R build/out/test02
python3 infra/helper.py build_fuzzers --sanitizer=coverage test02