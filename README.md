# Projet : Writer assistant

Assistant d’écriture de livre, qui doit permettre a un utilisateur (administrateur), de créer et naviguer dans les enregistrements suivants :

- Chapitre : numérote (l’ordre est important), il comporte un titre, et se compose de scènes et d’anecdotes.

- Anecdote : un texte qui a un sujet et un ou plusieurs thèmes (poursuite, romance, exploration, …).

- Scène : un recit (texte) qui implique un ou plusieurs personnages dans un lieu et un instant ou une periode.

- Personne : peut apparaître dans une ou plusieurs scenes.




# Explications de l'application : 


J'ai créé un modèle user qui sera admin. On doit créer l'utilisateur via rails console.

- rake db:migrate

- rake test:prepare

- rails c (par exemple ci-dessous) :

- User.create!(name:"Bobby", email:"bobby@mail.com", password:"111111", password_confirmation:"111111")

Il doit se connecter pour accéder aux différentes pages de créations de chapitres, anecdotes, scenes, themes, et personnages.

Après l'ajout d'informations dans la base de donnée, ces dernières sont listées dans des tableaux. L'action show permet de voir toutes les autres dépendances : par exemple pour un chapitre permettre de lister ses anecdotes et scenes correspondantes. L'action edit permet d'éditer les différentes données enregistrées et destroy permet de les effacer.

============================

Problèmes rencontrés : relations has_and_belongs_to_many pour scenes et characters. Je comptais aussi limiter totalement l'accès aux différentes pages d'édition pour l'utilisateur non connectés.