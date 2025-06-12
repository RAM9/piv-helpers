#!/bin/zsh

if [ "$#" -eq 2 ]; then
  echo "Your prefix: $1"
  prefix=$1
  CN=$2
  dir="./$CN/$prefix"

  if [ -d $dir ]; then
    echo "Directory: $dir already exists - I will not overwrite "
    echo "Exiting"
  else
    mkdir -p $dir
    cd $dir
    command openssl genrsa  -out $prefix.rsa.pem 2048
    command openssl req -new -key $prefix.rsa.pem -out $prefix.request.csr -subj "/CN=$CN"
    command openssl x509 -req -key $prefix.rsa.pem -in $prefix.request.csr -out $prefix.rsa.certificate.crt -days 2555
    command openssl pkcs12 -export -inkey $prefix.rsa.pem -in $prefix.rsa.certificate.crt -out $prefix.rsa.pfx
    cd -
  fi
else
  echo "This will generate a pkcs12 file with RSA2048 key-pair"
  echo "It can be imported into the 9d slot ( key management ) for use with Yubiki and MacOS command \"sc_auth pair\""
  echo ""
  echo "Specify a prefix with your first argument."
  echo "Specify a CN value with your second argument."
  echo ""
  echo "Example:"
  echo ""
  echo "$(basename "$0") 9d MyCommonName"
  echo "$(basename "$0") 9d me.myname.net"
  echo ""
fi



