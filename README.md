# Spitter
Aquí s'inclou un script programat en bash per enviar correus utilitzant la tècnica de spoofing.

Primer de tot cal descarregar-se l'arxiu (spitter.sh) i editar l'ASSUMPTE, REMITENT, DESTINATARI i COS. El COS correspon al path a seguir on es troba l'arxiu HTML (o en un altre format) a enviar.

S'inclou un arxiu d'exemple per comprovar el correcte funcionament (```exemple_mail.html```).

### Configuració

Prèviament cal instal·lar les llibreries següents:

```
sudo apt-get install postfix
sudo apt-get install mailutils
```

Finalment, cal donar permisos d'execució al script: 

```chmod u+x spitter.py```
