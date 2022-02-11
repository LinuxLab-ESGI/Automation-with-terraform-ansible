# Automatisation

Par Evan Bitic & Alexis Douannes
Pour le LinuxLab 

# Introduction

Cette présentation porte sur l'automatisation au sein de l'information en s'appuyant sur les technologies Ansible & Terraform

# C'est quoi l'automatisation ?

L'automatisation, c'est l'execution d'un processus autonome suite à un déclencheur manuel ou non.

- Déclencheur -> Action

L'automatisation est un élément clé dans les processus d'optimisation. Les environnements informatiques doivent pouvoir évoluer le plus vite possible et l'automatisation joue un rôle essentiel.

# Que couvre l'automatisation informatique ?

Automatisation :
- du réseau
- de la gestion des configurations
- du déploiement d'applications
- provisionnement du cloud

# L'automatisation, l'ultime solution ?

Non, une approche globale de l'automatisation informatique peut vous aider à soulager vos équipes des tâches manuelles répétitives. L'automatisation permet :
- d'augmenter la productivité des équipes informatiques
- de réduire le nombre d'erreurs
- de consacrer davantage de temps aux tâches stratégiques.

# Provisionnement : Introduction

Nos environnements sont majoritérement virtualisées, ce qui nous permets la gestion des réseaux, espace de stockage et autres machines virtuelles par l'intermédiaire d'un interface logiciel.

La communication entre vous et les environnements virtualisées peuvent être automatiser afin de vous permettre de créer une infrastructure entière, c'est ce qu'on appel l'approche IaC (Infrasctrure as Code)

## Provisionnement automatisé : L'approche

Le IaC, Infrastructure en tant que code, permet de codifier l'infrastructure de manière à automatiser et à accélérer le déploiement, de plus cela le rend reproductible. 

En résumé :
- C'est plus rapide
- C'est plus fiable
- Cela empêche la dérive de la configuration
- Cela optimise votre infrastructure

# Provisionnement : Technologie

Terraform est une solution opensource, créé par HashiCorp en langage Go. 

C'est un outil de codage déclaratif, qui utilise le langage HCL, c'est un dérivé du JSON par HashiCorp, qui va vous permettre de décrire votre infrastructure.

La connexion à l'interface ce fait via la commande Powershell `az login`

En quelque point : 
- Syntaxe simple
- Gestion de plusieurs cloud
- Le plus populaire

# Gestion des configurations : Introduction

La gestion des configurations est un processus qui permet de maintenir les systèmes informatiques, les serveurs et les logiciels comme prévu au fil des changements effectués.

Cette gestion des configurations intervient seulement après le provisionnement des systèmes souhaités.

Exemple d'utilisation :
- Déploiement d'une nouvelle application
- Déploiement de configuration systèmes et réseaux

En résumé :
- Déployer les configurations rapidement
- Déployer une configuration fiable et fonctionnelle

# Gestion des configurations : Ansible
*Logiciel libre, créé par RedHat*

C'est un outil développé pour la gestion et la configuration des ordinateurs, s'appuyant sur des playbooks (script) rédigés en YAML nous permettant d'énumérer les tâches à effectuer.

En quelques points :
- Rédaction de playbooks simple
- Gestion de nombreux ordinateurs en simultané
- Très populaire

# Quelque exemple

Vous trouverez des exemples de fichier Terraform et Ansible au sein des dossiers du même nom.

# Source : 
- L'automatisation : https://www.redhat.com/fr/topics/automation/whats-it-automation 
- Site officiel de Terraform : https://www.terraform.io/
- Authentification Terraform/Azure : https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/azure_cli
- Explication de Terraform & IAC : https://www.ibm.com/fr-fr/cloud/learn/terraform
- Code Terraform : https://docs.microsoft.com/fr-fr/azure/developer/terraform/create-linux-virtual-machine-with-infrastructure