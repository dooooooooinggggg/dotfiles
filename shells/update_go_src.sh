for FILE1 in ~/go/src/golang.org/x/*
do
    cd ${FILE1} # ファイル名を出力
    pwd
    git pull
    cd ..
done
