require "base64"


encoded_data = "cmVxdWlyZSAnLi9jaGFsbGVuZ2UucmInCgpSU3BlYy5kZXNjcmliZSAnVW5p
dFRlc3RzJyBkbwoKICBpdCAnZmlyc3RfZXhhbXBsZScgZG8KCiAgICAjIEZh
aWx1cmUgbWVzc2FnZTogCiAgICAjIE1ldGhvZCBjYWxsZWQ6IGxlZnRtb3N0
X25vZGVzX3N1bShbMiwgNywgNSwgMiwgNiwgMCwgOV0pCgogICAgZXhwZWN0
KGxlZnRtb3N0X25vZGVzX3N1bShbMiwgNywgNSwgMiwgNiwgMCwgOV0pKS50
byBlcSgxMSkKCiAgZW5kCgogIGl0ICdzZWNvbmRfZXhhbXBsZScgZG8KCiAg
ICAjIEZhaWx1cmUgbWVzc2FnZTogCiAgICAjIE1ldGhvZCBjYWxsZWQ6IGxl
ZnRtb3N0X25vZGVzX3N1bShbMSwgNywgNSwgMiwgNiwgMCwgOSwgMywgNywg
NSwgMTEsIDAsIDAsIDQsIDBdKQoKICAgIGV4cGVjdChsZWZ0bW9zdF9ub2Rl
c19zdW0oWzEsIDcsIDUsIDIsIDYsIDAsIDksIDMsIDcsIDUsIDExLCAwLCAw
LCA0LCAwXSkpLnRvIGVxKDEzKQoKICBlbmQKCiAgaXQgJ3RoaXJkX2V4YW1w
bGUnIGRvCgogICAgIyBGYWlsdXJlIG1lc3NhZ2U6IAogICAgIyBNZXRob2Qg
Y2FsbGVkOiBsZWZ0bW9zdF9ub2Rlc19zdW0oWzUsIDMsIDQsIDExLCAxMywg
MTUsIDIxLCAxMCwgNCwgNywgMiwgOCwgMCwgOSwgMF0pCgogICAgZXhwZWN0
KGxlZnRtb3N0X25vZGVzX3N1bShbNSwgMywgNCwgMTEsIDEzLCAxNSwgMjEs
IDEwLCA0LCA3LCAyLCA4LCAwLCA5LCAwXSkpLnRvIGVxKDI5KQoKICBlbmQK
CmVuZAo=
"

data = Base64.decode64(encoded_data)

eval(data)
