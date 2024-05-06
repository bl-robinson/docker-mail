# Home Mailserver

postfix/dovecot with opendkim for validation

Requires Cert mounted at /etc/cert/tls.crt /etc/cert/tls.key

Need to handle password setting of the benr user on container startup using encrypted value somehow.

Potentially Dovecot/postfix should be split and share a volume?
Also will need /etc/postfix/sasl_passwd set and tools for that to work. (secret populated from somewhere?)

Mounts that are required....
/var/mail
/home/benr/mail