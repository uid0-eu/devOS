id=$(composer-cli compose status | grep -m 1 RUNNING | awk -F' ' '{print $1}')

tail -f /var/lib/lorax/composer/results/$id/logs/anaconda/anaconda.log
