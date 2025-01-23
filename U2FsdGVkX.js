var encrypted = CryptoJS.AES.encrypt("hiu@#storeallday", "encrpytedallday");
//U2FsdGVkX18ZUVvShFSES21qHsQEqZXMxQ9zgHy+bu0=

var decrypted = CryptoJS.AES.decrypt(encrypted, "encrpytedallday");
//4d657373616765
