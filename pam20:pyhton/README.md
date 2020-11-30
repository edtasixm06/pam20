# PAM

## @edt ASIX M06 2020-2021


Podeu trobar les imatges docker al Dockehub de [edtasixm06](https://hub.docker.com/u/edtasixm06/)

Podeu trobar la documentació del mòdul a [ASIX-M06](https://sites.google.com/site/asixm06edt/)

ASIX M06-ASO Escola del treball de barcelona

### Imatges:

* **edtasixm06/pam20:python** host pam basat en pam20:base per practicar crear una aplicació PAM Aware i per 
  crear el nostre propi mòdul de PAM.

  Amb l'aplicació PAM Aware *pamware.py* es fa un programa que mostra els números del 1 al 10 però sempre i quant
  l'usuari que l'executa sigui un usuari autenticat (*pam_unix.so*).

  Es dissenya un mòdul propi de PAM anomenat *pam_mates.py* que autentica els usuaris segons si saben respondre 
  o no a una pregunta de mates. Els usuaris que en saben queden autenticats, si no diuen la resposta correcta
  es denega l'autenticació. Per poder usar un modul pam escrit en python cal descarregar, compilar i incorporar 
  com a llibreia el mòdul *pam_pyhton.so*.

  *Nota*: La imatge pesa molt perquè incorpora molts paquets per compilar el mòdul pam_python.so. Si es vol fer
  drecera es pot descarregar i usar directament el fitxer pam_python.so del git i copiar-lo al directori de mòduls
  pam (sempre que sigui la versió de sistema apropiada).


  ```
  $ docker run --rm --name pam.edt.org --hostname pam.edt.org --net 2hisix -it edtasixm06/pam20:python
 
  # Test pam_pyhton.so pam_mates.py
  su - unix01
  chfn

  # Test pamwarare.py
  python3 /opt/docker/pamaware.py
 
  ```

