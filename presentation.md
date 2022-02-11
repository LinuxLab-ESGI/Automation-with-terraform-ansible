---
marp: true
paginate: true
color: #ffff
backgroundColor: #303030
footer: "**12/01/2022 - Evan Bitic & Alexis Douannes**"
author:  Evan Bitic & Alexis Douannes
class: invert
---
<!--
_header: '![width:100px height:100px](./img/logo.png)'
-->

# Automatisation
<!--
_header: '![width:100px height:100px](./img/logo.png)'
-->

Par Evan Bitic & Alexis Douannes
Pour le LinuxLab 

---
<!--
_header: '![width:100px height:100px](./img/logo.png)'
-->

# Introduction

Cette présentation porte sur l'automatisation au sein de l'information en s'appuyant sur les technologies Ansible & Terraform

---
<!--
_header: '![width:100px height:100px](./img/logo.png)'
-->

# C'est quoi l'automatisation ?

L'automatisation, c'est l'execution d'un processus autonome suite à un déclencheur manuel ou non.

- Déclencheur -> Action

L'automatisation est un élément clé dans les processus d'optimisation. Les environnements informatiques doivent pouvoir évoluer le plus vite possible et l'automatisation joue un rôle essentiel.

---
<!--
_header: '![width:100px height:100px](./img/logo.png)'
-->

# Que couvre l'automatisation informatique ?

Automatisation :
- du réseau
- de la gestion des configurations
- du déploiement d'applications
- provisionnement du cloud

---
<!--
_header: '![width:100px height:100px](./img/logo.png)'
-->

# L'automatisation, l'ultime solution ?

Non, une approche globale de l'automatisation informatique peut vous aider à soulager vos équipes des tâches manuelles répétitives. L'automatisation permet :
- d'augmenter la productivité des équipes informatiques
- de réduire le nombre d'erreurs
- de consacrer davantage de temps aux tâches stratégiques.

---
<!--
_header: '![width:100px height:100px](./img/logo.png)'
-->

# Provisionnement : Introduction

Nos environnements sont majoritérement virtualisées, ce qui nous permets la gestion des réseaux, espace de stockage et autres machines virtuelles par l'intermédiaire d'un interface logiciel.

La communication entre vous et les environnements virtualisées peuvent être automatiser afin de vous permettre de créer une infrastructure entière, c'est ce qu'on appel l'approche IaC (Infrasctrure as Code)

---
<!--
_header: '![width:100px height:100px](./img/logo.png)'
-->

## Provisionnement automatisé : L'approche

Le IaC, Infrastructure en tant que code, permet de codifier l'infrastructure de manière à automatiser et à accélérer le déploiement, de plus cela le rend reproductible. 

En résumé :
- C'est plus rapide
- C'est plus fiable
- Cela empêche la dérive de la configuration
- Cela optimise votre infrastructure

---
<!--
_backgroundColor: #A0A0A0
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

# Gestion des configurations : Introduction

La gestion des configurations est un processus qui permet de maintenir les systèmes informatiques, les serveurs et les logiciels comme prévu au fil des changements effectués.

Cette gestion des configurations intervient seulement après le provisionnement des systèmes souhaités.

Exemple d'utilisation :
- Déploiement d'une nouvelle application
- Déploiement de configuration systèmes et réseaux

En résumé :
- Déployer les configurations rapidement
- Déployer une configuration fiable et fonctionnelle

---
<!--
_backgroundColor: #A0A0A0
_color: #000000
-->
# Gestion des configurations : Ansible
![ width:100px](img/Ansible_logo.svg)
*Logiciel libre, créé par RedHat*

C'est un outil développé pour la gestion et la configuration des ordinateurs, s'appuyant sur des playbooks (script) rédigés en YAML nous permettant d'énumérer les tâches à effectuer.

En quelques points :
- Rédaction de playbooks simple
- Gestion de nombreux ordinateurs en simultané
- Très populaire

---
<!--
_header: '![width:100px height:100px](./img/logo.png)'
-->

# Démonstration en direct

- Mise en place d'une infrastructure sur Azure via Terraform
- Installation d'un serveur Minecraft via Ansible


---
<!--
_header: '![width:100px height:100px](./img/logo.png)'
-->

# Let's talk

La règle d'or, automatisez que si vous êtes gagnants !

![bg right:55%](https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWljcm9waG9uZXxlbnwwfHwwfHw%3D&w=1000&q=80)


---

<!--
_header: '![width:100px height:100px](./img/logo.png)'
-->

# Source : 
- L'automatisation : https://www.redhat.com/fr/topics/automation/whats-it-automation 
- Site officiel de Terraform : https://www.terraform.io/
- Explication de Terraform & IAC : https://www.ibm.com/fr-fr/cloud/learn/terraform
- Code Terraform : https://docs.microsoft.com/fr-fr/azure/developer/terraform/create-linux-virtual-machine-with-infrastructure