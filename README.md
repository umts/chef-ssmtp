Description
===========
Installs ssmtp, a send-only sendmail emulator.

Requirements
============
None.  Only tested on Ubuntu, but I suspect it will work on other Linux
distributions.

Attributes
==========
* `node['ssmtp']['root_user']` - The user or email address that gets
  all mail addressed to UIDs less that 1000.  Rewriting disabled if
  blank (the default).
* `node['ssmtp']['mailhub']` - The host to send mail to
* `node['ssmtp']['rewrite_domain']` - The domain from which mail
  appears to come from
* `node['ssmtp']['hostname'] ` - The domain of the host.  Defaults to
  `node['fqdn']`
* `node['ssmtp']['from_line_override']` - Can users change the From:
  header?  Defaults to true
* `node['ssmtp']['use_tls']` - Whether to use TLS to talk to the SMTP
  server. The default is false.
* `node['ssmtp']['use_starttls']` - Whether ssmtp does a EHLO/STARTTLS
  before starting SSL negotiation.  The default is false.
* `node['ssmtp']['tls_cert']` - The file name of an RSA certificate to
   use for TLS, if required.
* `node['ssmtp']['use_auth']` - If set to false, send as unauthenticated
  mail.  The default is true
* `node['ssmtp']['auth_user']` - The SMTP user
* `node['ssmtp']['auth_pass']` -  The SMTP password
* `node['ssmtp']['auth_method']` - Default is nil, but can be set to
  "cram-md5" if needed.
