# Home Mailserver

postfix/dovecot with opendkim for validation

Requires letsencrypt folder mounted for certificate for dovecot.

Will required persistent folders mounted for mail content etc.
Also need to handle password setting of the benr user on container startup using encrypted value somehow.

Potentially Dovecot/postfix should be split and share a volume? t