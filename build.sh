#!/bin/bash

usage()
{
    filename=$(basename $0)
    echo "Usage:   $filename -a calculator -p  linux"
    echo "         -a --app      : Go application name for build, such as calculator"
    echo "         -p --platform : OS platform, windows, darwin(MacOSX), linux"
    echo "         -h --help     : Help usage"
    exit 1
}
VERSION="0.0.1"
PARSE=`/usr/bin/getopt -o a:h:p "$@"`

if [[ $? != 0 ]] || [[ -z $2 ]]; then
    usage
fi

APPLICATION=calculator
PLATFORM=linux
while [ -n "$1" ] ; do
    case "$1" in
        -a | --app ) APPLICATION=$2; echo "$2";shift 2;;
        -p | --platform) PLATFORM=$2; shift 2 ;;
        -h | --help) usage;;
        --) shift; break ;;
        *) echo "Parameter error"; usage ;;
    esac
done
echo "Build application $APPLICATION for paltform $PLATFORM"
if [ "$PLATFORM"="linux" ];then
    APPLICATION=$APPLICATION"."$PLATFORM
elif [ "$PLATFORM"="darwine" ];then
    APPLICATION=$APPLICATION".mac"
fi
echo "Build to application $APPLICATION"
CGO_ENABLED=0 GOOS=$PLATFORM GOARCH=amd64 go build -o $APPLICATION
