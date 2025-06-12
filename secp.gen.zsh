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
    command openssl ecparam -genkey -name secp384r1 -noout -out $prefix.secp384r1.pem
    command openssl req -new -key $prefix.secp384r1.pem -out $prefix.request.csr -subj "/CN=$CN"
    command openssl x509 -req -key $prefix.secp384r1.pem -in $prefix.request.csr -out $prefix.secp384r1.certificate.crt -days 2555
    command openssl pkcs12 -export -inkey $prefix.secp384r1.pem -in $prefix.secp384r1.certificate.crt -out $prefix.secp384r.pfx
    cd -
  fi
else
  echo "This will generate a pkcs12 file with ECCP384 (secp384r1) public key"

  echo "It can be imported into the 9a slot ( Authentication ) for use with Yubiki and MacOS command \"sc_auth pair\""
  echo ""
  echo "Specify a prefix with your first argument."
  echo "Specify a CN value with your second argument."
  echo ""
  echo "Example:"
  echo ""
  echo "$(basename "$0") 9a MyCommonName"
  echo "$(basename "$0") 9a me.myname.net"
  echo ""
fi



