# PAM

## @edt ASIX M06 2020-2021


Podeu trobar les imatges docker al Dockehub de [edtasixm06](https://hub.docker.com/u/edtasixm06/)

Podeu trobar la documentació del mòdul a [ASIX-M06](https://sites.google.com/site/asixm06edt/)

ASIX M06-ASO Escola del treball de barcelona

### Imatges:

* **edtasixm06/pam20:auth** host pam que configura l'autenticació unix i ldap usant *authconfig*.
  Es crea automàticament el directori home dels usuaris de ldap i es munta un recurs tmpfs de 100MB.

  Atenció: fabricat usant Fedora-27 en lloc de Fedora-32 per usar *authconfig* en lloc de *authselect* 

  Atenció: cal usar en el container --privileged per poder fer els muntatges.

```
$ docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -d edtasixm06/ldap20:latest 
$ docker run --rm --name pam.edt.org --hostname pam.edt.org --net 2hisix --privileged -it edtasixm06/pam20:auth
```

