#######################################################################################
## DO NOT EDIT THIS FILE! This file was automatically generated from the dockerfile. ##
## Run dynwrap:::.container_dockerfile_to_singularityrecipe() to update this file.   ##
#######################################################################################

Bootstrap: shub

From: dynverse/dynwrap:py3.6

%labels
    version 0.1.1

%post
    chmod -R a+r /code
    chmod a+x /code
    pip install git+https://github.com/kieranrcampbell/ouijaflow.git --upgrade --upgrade-strategy only-if-needed
    pip install tensorflow==1.6 # temporary fix for edward https://github.com/blei-lab/edward/issues/882

%files
    . /code

%runscript
    exec python /code/run.py

