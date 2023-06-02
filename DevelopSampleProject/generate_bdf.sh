# パス設定aaaa
export CPPTEST_TRACE_DIR=/home/keio/cpptest/bin
export PATH=${PATH}:${CPPTEST_TRACE_DIR}
# ビルドデータファイル作成のための環境変数設定
export PROJECT_DIR=$PWD
export CPPTEST_SCAN_OUTPUT_FILE=${PROJECT_DIR}/cpptestscan.bdf
export CPPTEST_SCAN_PROJECT_NAME=DevelopSampleProject
# export CPPTEST_SCAN_TRACE_COMMAND=gcc^|g\+\+
# ビルドデータファイル作成
cd ${PROJECT_DIR}
rm -f ${PROJECT_DIR}/cpptestscan.bdf
make clern
cpptesttrace make -i -B
