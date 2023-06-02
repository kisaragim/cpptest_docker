export CPPTEST_DIR=/opt/app/cpptest
export PATH=${CPPTEST_DIR}:$PATH
export CPPTEST_DIR=/opt/app

export WORKSPACE_DIR=../
export PROJECT_NAME=DevelopSampleProject
export PROJECT_DIR=$WORKSPACE_DIR$PROJECT_NAME

cpptestcli \
-data $WORKSPACE_DIR \
-resource $PROJECT_NAME \
-config "$WORKSPACE_DIR/tools/TestConfig/1_フロー解析（チュートリアル）.properties" \
-report $PROJECT_DIR/report \
-showdetails \
-appconsole stdout
