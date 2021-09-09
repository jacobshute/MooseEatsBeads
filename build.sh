#!/bin/sh

export PATH_TO_FX=./build/lib/javafx-sdk-11.0.2/lib
export PATH_TO_SRC=./src

export MODULES=javafx.controls,javafx.web

function main {
    # no args, build and package all
    if [ $# -eq 0 ]
    then
        all
    fi
    # if there is more than one 
    if [ $# -gt 0 ]
    then
        for var in $@
        do
            # clean
            if [ $var == "clean" ]; then
                clean
            fi

            # build everything then package
            if [ $var == "all" ]; then
                all
            fi

            # build java files to class files
            if [ $var == "MooseEatsBeads" ]; then
                build_MooseEatsBeads
            fi
        done
    fi
}


function all(){

    build_MooseEatsBeads
    package

}

# delete all build files (.class .jar)
function clean(){

    rm ./bin/MooseEatsBeads/*.class >&- 2>&-
    if [ $? -eq 0 ]; then
        echo "[deleted] MooseEatsBeads.class"
    fi

    rm ./build/MooseEatsBeads.jar >&- 2>&-
    if [ $? -eq 0 ]; then
        echo "[deleted] MooseEatsBeads.jar"
    fi
}

# create the jar file
function package(){
    jar cvfm ./build/MooseEatsBeads.jar ./bin/manifest.mf ./bin/MooseEatsBeads/MooseEatsBeads.class
}

# build MooseEatsBeads class
function build_MooseEatsBeads(){
    javac --module-path $PATH_TO_FX --add-modules $MODULES $PATH_TO_SRC/MooseEatsBeads/MooseEatsBeads.java -d ./bin -verbose
}




main $@