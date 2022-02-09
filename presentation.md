---
marp: true
paginate: true
color: #ffff
backgroundColor: #2A2A2A
header: '![width:100px height:100px](./img/logo.png)'
footer: "**12/01/2022 - Evan Bitic & Alexis Douannes**"
author:  Evan Bitic & Alexis Douannes
class: invert
---

# Automatisation

Par Evan Bitic & Alexis Douannes
Pour le LinuxLab 

---

# Introduction

Cette présentation porte sur l'automatisation au sein de l'information en s'appuyant sur les technologies Ansible & Terraform

---

# C'est quoi l'automatisation ?

L'automatisation, c'est l'execution d'un processus autonome suite à un délencheur manuel ou non.

- Déclencheur -> Action

L'automatisation est un élément clé dans les processus d'optimisation. Les environnements informatiques doivent pouvoir évoluer le plus vite possible et l'automatisation joue un rôle essentiel.

---

# Que couvre l'automatisation informatique ?

Automatisation :
- Du réseau
- de la gestion des configurations
- du déploiement d'applications
- provisonnement du cloud

L'automatisation peut être intégrée et s'appliquer à toute tâche, de l'automatisation du réseau à la gestion des configurations et au déploiement d'applications en passant par le provisionnement du cloud, de l'infrastructure et des environnements d’exploitation standard.

---

# L'automatisation, l'ultime solution ?

Non, une approche globale de l'automatisation informatique peut vous aider à soulager vos équipes des tâches manuelles répétitives. L'automatisation permet :
- d'augmenter la productivité des équipes informatiques
- de réduire le nombre d'erreurs
- de consacrer davantage de temps aux tâches stratégiques.

---

# Provisionnement : Introduction

Nos environnements sont majoritérement virtualisées, ce qui nous permets la gestion des réseaux, espace de stockage et autres machines virtuelles par l'intermédiaire d'un interface logiciel.

La communication entre vous et les environnements virtualisées peuvent être automatiser afin de vous permettre de créer une infrastructure entière, c'est ce qu'on appel l'approche IaC (Infrasctrure as Code)

---

## Provisionnement automatisé : L'approche

Le IaC, Infrastructure en tant que code, permet de codifier l'infrastructure de manière à automatiser et à accélèrer le déploiement, de plus cela le rend reproductible. 

En résumé :
- C'est plus rapide
- C'est plus fiable
- Cela empêche la dérive de la configration
- Cela optimise votre infrastructure

---
<!--
_backgroundColor: white
_color: #000000
-->

# Provisionnement : Technologie
![width:300px](img/Terraform_Logo.png)
*Open source, créé par HashiCorp.*

C'est un outil de codage déclaratif, qui utilise le langage HCL, c'est un dérivé du JSON par HashiCorp, qui va vous permettre de décrire votre infrastructure.

En quelque point : 
- Syntaxe simple
- Gestion de plusieurs cloud
- Le plus populaire

---

# Gestion des configurations

La gestion des configurations est un processus qui permet de maintenir les systèmes informatiques, les serveurs et les logiciels dans l'état souhaité et d'en préserver la cohérence

zbi mode :
Sans l'auto
Gestion conf c'est cool, ca permet de voir si tu fais pas de la merde
Mais c'est chiant et long zbi


Avec l'auto
Après le IaC, on gère les confs
Cela permet de conf la machine sur différents aspect, réseau, logiciel, compte utilisateur etc

Ansible

---

# Gestion des configurations : Ansible

![ width:100px](img/Ansible_logo.svg)


---

# L'avenir de l'automatisation informatique



La règle d'or, automatisez que si vous êtes gagnants !

---

# Conclusion

Nous avons choisis de parler une fraction de l'automatisation,

---

# Démonstration en direct

- Mise en place d'une infrastructure sur Azure via Terraform
- Installation d'un serveur Minecraft via Ansible
- Crontab

---

# Source : 
- https://www.redhat.com/fr/topics/automation/whats-it-automation 
- https://www.youtube.com/watch?v=iik25wqIuFo
- Terraform & IAC : https://www.ibm.com/fr-fr/cloud/learn/terraform