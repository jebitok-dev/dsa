require "base64"


encoded_data = "cmVxdWlyZSAnLi9jaGFsbGVuZ2UucmInCgpSU3BlYy5kZXNjcmliZSAnVW5p
dFRlc3RzJyBkbwoKICBpdCAnMXN0X3Rlc3QnIGRvCgogICAgIyBGYWlsdXJl
IG1lc3NhZ2U6IAogICAgIyBPcmRlciBvZiBtZXRob2RzIGNhbGxlZDogdHJl
ZSA9IGFycmF5X3RvX3RyZWUoWzEwLCAxLCAyLCAzLCA0LCA1LCA2XSwgMCkg
LT4gcG9zdF9vcmRlcih0cmVlKQoKICAgIHRyZWUgPSBhcnJheV90b190cmVl
KFsxMCwgMSwgMiwgMywgNCwgNSwgNl0sIDApCiAgICBleHBlY3QocG9zdF9v
cmRlcih0cmVlKS5zdHJpcCkudG8gZXEoJzMgNCAxIDUgNiAyIDEwJykKCiAg
ZW5kCgogIGl0ICcybmRfdGVzdCcgZG8KCiAgICAjIEZhaWx1cmUgbWVzc2Fn
ZTogCiAgICAjIE9yZGVyIG9mIG1ldGhvZHMgY2FsbGVkOiB0cmVlID0gYXJy
YXlfdG9fdHJlZShbMiwgNywgNSwgMiwgNiwgMCwgOV0sIDApIC0+IHBvc3Rf
b3JkZXIodHJlZSkKCiAgICB0cmVlID0gYXJyYXlfdG9fdHJlZShbMiwgNywg
NSwgMiwgNiwgMCwgOV0sIDApCiAgICBleHBlY3QocG9zdF9vcmRlcih0cmVl
KS5zdHJpcCkudG8gZXEoJzIgNiA3IDkgNSAyJykKCiAgZW5kCgogIGl0ICcz
cmRfdGVzdCcgZG8KCiAgICAjIEZhaWx1cmUgbWVzc2FnZTogCiAgICAjIE9y
ZGVyIG9mIG1ldGhvZHMgY2FsbGVkOiB0cmVlID0gYXJyYXlfdG9fdHJlZShb
MSwgMiwgMywgNCwgNSwgNiwgNywgOCwgOV0sIDApIC0+IHBvc3Rfb3JkZXIo
dHJlZSkKCiAgICB0cmVlID0gYXJyYXlfdG9fdHJlZShbMSwgMiwgMywgNCwg
NSwgNiwgNywgOCwgOV0sIDApCiAgICBleHBlY3QocG9zdF9vcmRlcih0cmVl
KS5zdHJpcCkudG8gZXEoJzggOSA0IDUgMiA2IDcgMyAxJykKCiAgZW5kCgog
IGl0ICc0dGhfdGVzdCcgZG8KCiAgICAjIEZhaWx1cmUgbWVzc2FnZTogCiAg
ICAjIE9yZGVyIG9mIG1ldGhvZHMgY2FsbGVkOiB0cmVlID0gYXJyYXlfdG9f
dHJlZShbMSwgNywgNSwgMiwgNiwgMCwgOSwgMywgNywgNSwgMTEsIDAsIDAs
IDQsIDBdLCAwKSAtPiBwb3N0X29yZGVyKHRyZWUpCgogICAgdHJlZSA9IGFy
cmF5X3RvX3RyZWUoWzEsIDcsIDUsIDIsIDYsIDAsIDksIDMsIDcsIDUsIDEx
LCAwLCAwLCA0LCAwXSwgMCkKICAgIGV4cGVjdChwb3N0X29yZGVyKHRyZWUp
LnN0cmlwKS50byBlcSgnMyA3IDIgNSAxMSA2IDcgNCA5IDUgMScpCgogIGVu
ZAoKZW5kCg==
"

data = Base64.decode64(encoded_data)

eval(data)
