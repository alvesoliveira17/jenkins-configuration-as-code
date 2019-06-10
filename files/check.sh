STATUSCODE=$(curl -sL -w "%{http_code}" jenkins.poc.rivendel.com.br/login -o /dev/null)

if test $STATUSCODE -eq 200; then
    echo "Jenkins service is running."
    exit 0; else
    echo "Jenkins service is not running."
    exit 1
fi
