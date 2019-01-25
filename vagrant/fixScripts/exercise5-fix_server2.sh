#!/bin/bash
#add fix to exercise5-server2 here
echo "AllowAgentForwarding yes" >> /etc/ssh/sshd_config
cat << EOF > /home/vagrant/.ssh/config
Host *
    StrictHostKeyChecking no
    ForwardAgent yes
EOF

cat << EOF > /home/vagrant/.ssh/id_rsa
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA2/11H28NGdUFqZi/FgT2mVn2YfQX6IpM/bpGOR0OSNZfVdSn
jjMwhlxClpDWyir2+YwbxjtC00mXqSHtMxoxCWbkr+pMwOgaqThP0UJEp09QUpgn
5RUNx+TFFgsz7OhPDbgzvCwwDzpbcxpSx6rrwjR1Kz0tjfaSvUj6KQAmSLHbK627
BaPBrpKi1Gt1E5/VltCsD3kJAm6j+LQ9Z1Rnyys4yQUpfebTJHaKWgehHPfzEen0
u13AIzBrNUd0kHaA8VrsryzpCH4fUr2gQCEqwNG0F8Vol2r79B+bq7FgRA3SkAFp
D6OX3OBuP83GzjEMlklDnzm7HM8iGpATLH/xqwIDAQABAoIBAQCJJV0UKK5ZMWWj
UpemSZfXCK/CZ2NUVIwlDjDjQEr8e7DZmIaQ7zbMPM5Cga92QAzSjFdwYNeLU3Da
P01aM3TosJ3XUdFh3hFo97NC+PZF+/tOUo9kkJiTyvpXgMpxYm6OVgzivgWEKNSE
UJ/U3Ki33O5C85Pn0hWvLcTPNMmpPRhG/4gW9F33d0kGkWcqk1OtJ76tow/4XG5E
Uh6Pjse3ERUERKBZeT2vbl6VlauwewzPMwmVvN8tqE429GueGkqpCOSsfQOo9IfH
C3WAAwpP4qaBgOzRqYoMn2zjfgYsIQ8Vi5umKg9MInN4NzBdqVLZBqr5Q6f6Xavo
3gc4wQgxAoGBAO9fbHq29PkfQKGl8TM9dAczRBUj2kG/lUD9ofzsYvmq8vT/oK2M
JSZpzoVA679C/QyepsJO36iBX0JiHj7BHXKmsLNgOPdrFPkQ2CP86du3tltD0Jt7
TbOXRnflLAU0IiActLF3FfTjSakY54qheYrMvGvvroYTaO/AnusN5fxZAoGBAOtF
Xew5YFYvjyfCv2uV4aFvcF6exB5T0hIQ+vAPsKP7IlC5KQF3jUK7vwiwSzMS0xxf
LOk47cR1BsBURoL0+WxOqlA7f+t8tv8zCFagopUsxyudALxGvPLPHSOIGIJUJ0By
ix91YQ8jtXzCbhq10EKB2qnIgKqp4t74M+/ERc2jAoGAHASoVujJXcuJriIVTHEZ
/qnCg1Lx/hYlqzjE2Cz3HNAkpgax0P6BbrCdyr0hmv6FTg/X5xCCX1/dPZDsh13l
S4E1V5mgsV0oVErjcbrtyJkFUENszHYvTyEaz3fUojtK70VM5STSPhrIiXFv0Ks7
5cI3H88rN2hYNQ/vygWTcOkCgYEA6mx60oa1JAtNdAvLmhKE+MtGRzGhLqrMdW3v
68Vmd24jWhW08x5BZc4W4jxvIZvPOMToxhYQbCFDMd6HR7N6191mPH2cz3K8EHq0
A0UZ2tP8PMu60N8XJEUUvrO74Bij58Z6M0VNCb3F92LwPLMOqUYkL+p1sheG1C6x
6WVDPEsCgYAIK0LK+fDmfVa+l4pjktyoKGUNXWoZAjg8TwYf1XLLUx+b0jHgQVj+
y/snUbXyKw0sY+b/lSrUn32cLu7XUN/kyWWshggQisWSGogj8a46exENE+I4r4b6
SasRhjqT2Ld4ryP1pQnuSZCwulYbQ1FBDSkCQRe5QTlSdft80+WbZg==
-----END RSA PRIVATE KEY-----

EOF

chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
chown vagrant:vagrant /home/vagrant/.ssh/config
chmod 600 /home/vagrant/.ssh/id_rsa
chmod 600 /home/vagrant/.ssh/authorized_keys


cat << EOF >> /home/vagrant/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDb/XUfbw0Z1QWpmL8WBPaZWfZh9Bfoikz9ukY5HQ5I1l9V1KeOMzCGXEKWkNbKKvb5jBvGO0LTSZepIe0zGjEJZuSv6kzA6BqpOE/RQkSnT1BSmCflFQ3H5MUWCzPs6E8NuDO8LDAPOltzGlLHquvCNHUrPS2N9pK9SPopACZIsdsrrbsFo8GukqLUa3UTn9WW0KwPeQkCbqP4tD1nVGfLKzjJBSl95tMkdopaB6Ec9/MR6fS7XcAjMGs1R3SQdoDxWuyvLOkIfh9SvaBAISrA0bQXxWiXavv0H5ursWBEDdKQAWkPo5fc4G4/zcbOMQyWSUOfObsczyIakBMsf/Gr vagrant@server1
EOF