default['ssmtp']['root_user'] = ''
default['ssmtp']['mailhub'] = 'mail.example.com'
default['ssmtp']['rewrite_domain'] = nil
default['ssmtp']['hostname']  = node['fqdn']
default['ssmtp']['from_line_override'] = true
default['ssmtp']['use_tls'] = false
default['ssmtp']['use_starttls'] = false
default['ssmtp']['tls_cert'] = nil
default['ssmtp']['use_auth'] = true
default['ssmtp']['auth_user'] = 'example'
default['ssmtp']['auth_pass'] = 'password'
default['ssmtp']['auth_method'] = nil