function ts-run () {
    echo $1;
    tsc $1;
    export BASE=`echo $1 | rev | cut -c 3- | rev`
    node ${BASE}js
    rm ${BASE}js
}
