# set params
ANDROID_NDK_ROOT=/cygdrive/e/android-ndk-r4-crystax
COCOS2DX_ROOT=/cygdrive/d/Work7/cocos2d-x

# copy resources

HELLOWORLD_ROOT=$COCOS2DX_ROOT/HelloWorld/android

if [ -d $HELLOWORLD_ROOT/assets ]; then
    echo "resources already exist"
else
    mkdir $HELLOWORLD_ROOT/assets
    cp $COCOS2DX_ROOT/HelloWorld/Resource/CloseNormal.png $HELLOWORLD_ROOT/assets
    cp $COCOS2DX_ROOT/HelloWorld/Resource/CloseSelected.png $HELLOWORLD_ROOT/assets
    cp $COCOS2DX_ROOT/HelloWorld/Resource/HelloWorld.png $HELLOWORLD_ROOT/assets
fi

# build
pushd $ANDROID_NDK_ROOT
./ndk-build -C $HELLOWORLD_ROOT
popd
