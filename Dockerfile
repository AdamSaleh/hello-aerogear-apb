FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"bmFtZTogaGVsbG8td29ybGQtYXBiCmltYWdlOiBhbnNpYmxlcGxheWJvb2tidW5kbGUvaGVsbG8t\
d29ybGQtYXBiCmRlc2NyaXB0aW9uOiBkZXBsb3lzIGhlbGxvLXdvcmxkIHdlYiBhcHBsaWNhdGlv\
bgpiaW5kYWJsZTogRmFsc2UKYXN5bmM6IG9wdGlvbmFsCm1ldGFkYXRhOgogIGRpc3BsYXlOYW1l\
OiBIZWxsbyBXb3JsZCAoQVBCKQogIGxvbmdEZXNjcmlwdGlvbjogQSBzYW1wbGUgQVBCIHdoaWNo\
IGRlcGxveXMgYSBjb250YWluZXJpemVkIEhlbGxvIFdvcmxkIHdlYiBhcHBsaWNhdGlvbgogIGRl\
cGVuZGVuY2llczogWydkb2NrZXIuaW8vYW5zaWJsZXBsYXlib29rYnVuZGxlL2hlbGxvLXdvcmxk\
OmxhdGVzdCddCnBsYW5zOgogIC0gbmFtZTogZGVmYXVsdAogICAgZGVzY3JpcHRpb246IEEgc2Ft\
cGxlIEFQQiB3aGljaCBkZXBsb3lzIEhlbGxvIFdvcmxkCiAgICBmcmVlOiBUcnVlCiAgICBtZXRh\
ZGF0YToKICAgICAgZGlzcGxheU5hbWU6IERlZmF1bHQKICAgICAgbG9uZ0Rlc2NyaXB0aW9uOiBU\
aGlzIHBsYW4gZGVwbG95cyBhIFB5dGhvbiB3ZWIgYXBwbGljYXRpb24gZGlzcGxheWluZyBIZWxs\
byBXb3JsZAogICAgICBjb3N0OiAkMC4wMAogICAgcGFyYW1ldGVyczogW10K"

ADD playbooks /opt/apb/actions
ADD roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}

USER apb
