# Home Mailserver

postfix/dovecot with opendkim for validation

Requires letsencrypt folder mounted for certificate for dovecot.

Will required persistent folders mounted for mail content (probabaly just benr mounted at /home/benr/mail and /var/mail/benr) (Arugably I should move these around to be in one place.)

Also need to handle password setting of the benr user on container startup using encrypted value somehow.

Potentially Dovecot/postfix should be split and share a volume?

Also will need /etc/postfix/sasl_passwd set and tools for that to work. (secret populated from somewhere?)