# php-security-checker

The objective is to provide a quick report of PHP security alerts, based on the contents from a given 
composer.lock file, in an easy to use Docker image.

More specifically this image provides an easy interface to use:

- sensiolabs/security-checker

## Usage

Windows users: The use of "$PWD" for present working directory will not work as expected, instead use the full path. 
Such as "//c/Users/adamculp/project".

```
$ cd </path/to/desired/directory>
$ docker run -it --rm -v "$PWD":/app -w /app adamculp/php-security-checker:latest \
php /usr/local/lib/php-security-checker/vendor/bin/security-checker security:check \
./composer.lock  > ./security_check_results.txt
```

In the example above, Docker runs an interactive terminal to be removed when all is completed, and mounts 
the current host directory ($PWD) inside the container, sets this as the current working directory, and then 
loads the image adamculp/php-security-checker. Following this we call on security-checker to run the 
security:check on the composer.lock in the current working directory, and finally, output the results 
to a text file in the current working directory.

This is the most common use case, enabling the user to run the tool on a composer.lock file located anywhere 
on the host system by altering the path used in the command.

## Enjoy!

Please star, on Docker Hub and/or Github, if you find this helpful.

