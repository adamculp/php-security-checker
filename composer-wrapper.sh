#!/bin/sh

php /usr/local/lib/php-security-checker/composer.phar $@
STATUS=$?
return $STATUS