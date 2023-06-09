
     # HOMEWORK2.1 #

     ### RESUME DE CODE ###

#LES OPERATEURS ET EXPRESSION
print(2+2) #on utilise l'opérateur d'addition
print(-4) #on utilise l'opérateur de soustraction
age = 5 + 5 #On utilise l'opérateur = et l'opérateur + dans une même instruction
#LES OPERATEURS RELATIONNELS
#les operateurs d'egalite
print(100 == 100) #affiche TRUE car 100 est égal à 100
print(18 == 4) #affiche FALSE car 18 est différent de 4
print(15+6i == 6i+15) #affiche TRUE
print(17+2i == 2+2i) #FALSE car les parties reelles sont différentes
     #Application dans la vie:on essaye de voir les individu ont le même salaire
SALAIRE_ALI=100000
SALAIRE_ANA=200000
SALAIRE_ALI==SALAIRE_ANA #affiche FALSE car ils n'ont les meme salaire.
# les operateurs d'egalite Avec des vecteurs
vect1=c(1,2,6,19)
vect2=c(1,9,6,5)
vect1==vect2 #TRUE FALSE  TRUE FALSE (compare les elements du vecteur un à un)
#avec des vecteurs de longueur different ,le principe reste le même.
vect3=c(14,24,18)
vect4=c(1,2,18)
vect3==vect4 #FALSE FALSE  TRUE
vect1==vect2==vect3
# les operateurs d'egalite Selectionner des éléments dans un vecteur 
vect = c(1,2,3,4,2,5,2) 
index = vect == 2
only_two_vect = vect[index] #extrait les chiffres 2
print(only_two_vect) #2 2 2


vect = c(1,2,3,4,2,5,2) 
index = vect == 10
only_two_vect = vect[index] 
print(only_two_vect) # Affiche numeric(0) car il n'ya pas d'element 10 dans vect

#L'operateur == et les chaines de caracteres

mon_prof="DIALLO"
print(mon_prof=="DIALLO")#TRUE car la valeur stocke dans mon prof est "DIALLO"

print(mon_prof=="PIALLO")#FALSE
print(mon_prof=="dIALLO")#FALSE car la comparaison est sensible a la casse


#L'operateur == et les logical

print(TRUE == TRUE) #TRUE car TRUE est toujours égal à TRUE
print(TRUE == FALSE) #FALSE car TRUE est différent de FALSE
print(FALSE == FALSE) #TRUE car FALSE est égal à FALSE


#L'operateur de difference (elle fait l'opeeration oppose a ==) : !=
print(100 != 100) #affiche FALSE car 100 est égal à 100
print(18 != 4) #affiche TRUE car 18 est différent de 4
print(15+6i != 6i+15) #affiche FALSE
print(17+2i != 2+2i) #TRUE car les parties reelles sont différentes
# L'operateur de difference avec les vecteurs
vect5 = c(1,2,3,4,2,5,2) 
print(vect[vect != 2 ])# affiche les elements differentde 2

# Egalite et nombres flottants
0.1 + 0.2 == 0.3#affiche... FALSE ! car R manipule du binaire et non des decimaux donc faisons attentions
#Les operateurs >, <, >= et <=
print( 5 > 4) #TRUE, car 5 est superieur à 4
print( 4 > 5) #FALSE, 4 n'est pas superieur à 5
print(5 < 4) #FALSE, 5 n'est pas inferieur à 5
print(4 < 5) #TRUE car 4 est inferieur à 5

#Inegalites non stricte :
print( 5 >= 4) #TRUE, car 5 est supérieur ou égal à 4
print( 5 >= 5) ##TRUE, 5 est supérieur ou égal 5
print(5 <= 4) #FALSE, 5 n'est pas inférieur ou égal à 4
print(4 <= 5) #TRUE car 4 est inférieur ou égal à 5
#Comparaison entre logicial
print(TRUE > FALSE) #TRUE car TRUE est toujours considererer superieure a FALSE
print(FALSE < TRUE) #TRUE
print(TRUE > TRUE) #FALSE
print(TRUE <= FALSE) #FALSE
#ATTENTION LA COMPARAISON AVEC Les operateurs >, <, >= et <= NE MARCHE PAS AVEC NOMBRE COMPLEXE 
print(5+2i > 4+1i) #erreur : invalid comparison with complex values
print(4+4i >= 4+1i) #erreur : invalid comparison with complex values

#Comparaisons entre chaines de caracteres :ici on utilise l'ordre de classification d'un dictionnaire francais
print("A" > "B") #affiche... FALSE car A est avant B dans l'alphabet donc A est plus petit
print("Obama" < "Washington") #TRUE comme W est aprés A, il est plus grand
print("chat" > "chats") #FAUX car chats est aprés chat dans un dictionnaire
#ATTENTION la comparaison avec les chaines de caracteres tient compte de la langue d'usage de la machine ,ce qui differe d'une langue a autre

#Operations entre deux elements de types differents:R va convertir les elements pour pouvoir comparer

print( 5 == 5L) #TRUE
print(5 == "5") #TRUE
print( 5 < "A") #TRUE, les nombres viennent aprés les lettres pour R 
print(5 >= 5 + 0i) #Erreur, R refuse de comparer des complexes

#L'operateur de negation !:permet d'inverser une valeur logique
print(!TRUE) #affiche FALSE
print(!FALSE) #affiche TRUE
print(c(TRUE,FALSE)) #affiche FALSE  TRUE

#Les operateurs & et && :ils correspondent au "ET" logique
print(TRUE & TRUE) #TRUE
print(FALSE & FALSE) #FALSE
print((10 > 5) & (6 > 5)) #TRUE car 10>5 est vrai et 6>5 est vrai aussi

#avec les vecteurs
vect1 = c(TRUE, TRUE, FALSE)
vect2 = c(TRUE, FALSE, FALSE)
print(vect1 & vect2) #affiche TRUE FALSE FALSE


#ATTENTION A L'UTILISATION DE L'OPERATEUR && DANS LE CAS D'UN VETEUR
#Ainsi, selon la comparaison que vous voulez faire, il faudra utiliser l'operateur ET approprie.
vect1 = c(TRUE, TRUE, FALSE)
vect2 = c(TRUE, FALSE, FALSE)
print(vect1 && vect2) #Warning messages car && n'est pas approprie pour les vecteur

vect1 <- c(TRUE, TRUE, FALSE)
vect2 <- c(TRUE, FALSE, FALSE)
suppressWarnings(vect1 && vect2) #en forcant l'affichage on obtient TRUE car ne regarde que le premier element

#Les operateurs | et ||:Ils correspondent au "OU" logique
print(TRUE || FALSE) #TRUE 
print(TRUE || TRUE) #TRUE, le OU est inclusive, les deux peuvent être vrais en même temps 
print(10 > 5 || 5 <10) #TRUE car 10>5 est vrai
print(NA || TRUE)
#ATTENTION au || car il est a l'image du &&
vect1 = c(TRUE, TRUE, FALSE)
vect2 = c(TRUE, FALSE, FALSE)
print(vect1 | vect2) #affiche TRUE TRUE FALSE
print(vect1 || vect2) #Warning message:.......................


vect1 = c(TRUE, TRUE, FALSE)
vect2 = c(TRUE, FALSE, FALSE)
print(vect1 | vect2) #affiche TRUE TRUE FALSE
suppressWarnings(vect1 || vect2) #en forcant l'affichage on obtient TRUE car regarde uniquement le premier element


#COMBINAISON DE PLUSIEURS OPERATEURS
#disons une personne est autoriser a candidater au poste de directeur s'il a au moins 40 ans et au plus 2 enfants et au moins 1000000F de salaire
#on veut tester voir si BABA peut candidat 
age=45
enfants=1
salaire=2000000
autorisation_candidature = (age >= 40) && (enfants<2) && (salaire > 1000000) 
print(autorisation_candidature) #TRUE car il rempli les conditions donc il peut candidater

#Cete fois-ci disons une personne est autoriser a candidater au poste de directeur s'il a au moins 40 ans OU au plus 2 enfants et au moins 1000000F de salaire
age=45
enfants=5
salaire=2000000
autorisation_candidature = (age >= 40) || (enfants<2) && (salaire > 1000000) 
print(autorisation_candidature) #TRUE car le || il suffit qu'une condition soit rempli or il rempli la condition sur l'age

#Operations impliquants NA
print(5 == NA) #affiche NA 
print("Obama" > NA) #affiche NA
print( NA == NA) #affiche NA aussi !
print(NA && TRUE) #NA
print(NA || (5 > 4)) #TRUE car NA c'est pas utile à la détermination du résultat !

              ### EXEMPLE ###

### OPERATIONS ARITHMETIQUES
###
## L'arithmetique vectorielle caracteristique du langage R
## rend tres simple et intuitif de faire des operations
## mathematiques courantes. L� o� plusieurs langages de
## programmation exigent des boucles, R fait le calcul
## directement. En effet, les r�gles de l'arithm�tique en R
## sont globalement les memes qu'en alg�bre vectorielle et
## matricielle.
5 * c(2, 3, 8, 10)          # multiplication par une constante
c(2, 6, 8) + c(1, 4, 9)     # addition de deux vecteurs
c(0, 3, -1, 4)^2            # �l�vation � une puissance

## Dans les regles de l'arithmetique vectorielle, les
## longueurs des vecteurs doivent toujours concorder. R permet
## plus de flexibilit� en recyclant les vecteurs les plus
## courts dans une op�ration. Il n'y a donc � peu pr�s jamais
## d'erreurs de longueur en R! C'est une arme � deux
## tranchants: le recyclage des vecteurs facilite le codage,
## mais peut aussi r�sulter en des r�ponses compl�tement
## erron�es sans que le syst�me ne d�tecte d'erreur.
8 + 1:10                    # 8 est recycl� 10 fois
c(2, 5) * 1:10              # c(2, 5) est recycl� 5 fois
c(-2, 3, -1, 4)^1:4         # quatre puissances diff�rentes

## On se rappelle que les matrices (et les tableaux) sont des
## vecteurs. Les r�gles ci-dessus s'appliquent donc aussi aux
## matrices, ce qui r�sulte en des op�rateurs qui ne sont pas
## d�finis en alg�bre lin�aire usuelle.
(x <- matrix(1:4, 2))       # matrice 2 x 2
(y <- matrix(3:6, 2))       # autre matrice 2 x 2
5 * x                       # multiplication par une constante
x + y                       # addition matricielle
x * y                       # produit *�l�ment par �l�ment*
x %*% y                     # produit matriciel
x / y                       # division *�l�ment par �l�ment*
x * c(2, 3)                 # produit par colonne

###
### OP�RATEURS
###

## Seuls les operateurs %%, %/% et logiques sont illustr�s
## ici. Premi�rement, l'op�rateur modulo retourne le reste
## d'une division.
5 %% 2                      # 5/2 = 2 reste 1
5 %% 1:5                    # remarquer la p�riodicit�
10 %% 1:15                  # x %% y = x si x < y

## Le modulo est pratique dans les boucles, par exemple pour
## afficher un resultat � toutes les n it�rations seulement.
for (i in 1:50)
{
  ## Affiche la valeur du compteur toutes les 5 it�rations.
  if (0 == i %% 5)
    print(i)
}

##La division entiere retourne la partie entiere de la
## division d'un nombre par un autre.
5 %/% 1:5
10 %/% 1:15

## Le ET logique est vrai seulement lorsque les deux
## expressions sont vraies.
c(TRUE, TRUE, FALSE) & c(TRUE, FALSE, FALSE)

## Le OU logique est faux seulement lorsque les deux
## expressions sont fausses.
c(TRUE, TRUE, FALSE) | c(TRUE, FALSE, FALSE)

## La negation logique transforme les vrais en faux et vice
## versa.
! c(TRUE, FALSE, FALSE, TRUE)

## On peut utiliser les operateurs logiques &, | et !
## directement avec des nombres. Dans ce cas, le nombre z�ro
## est trait� comme FALSE et tous les autres nombres comme
## TRUE.
0:5 & 5:0
0:5 | 5:0
!0:5

## Ainsi, dans une expression conditionnelle, inutile de
## v�rifier si, par exemple, un nombre est �gal � z�ro. On
## peut utiliser le nombre directement et sauver des
## op�rations de comparaison qui peuvent devenir co�teuses en
## temps de calcul.
x <- 1                      # valeur quelconque
if (x != 0) x + 1           # TRUE pour tout x != 0
if (x) x + 1                # tout � fait �quivalent!

## L'exemple de boucle ci-dessus peut donc �tre l�g�rement
## modifi�.
for (i in 1:50)
{
  ## Affiche la valeur du compteur toutes les 5 it�rations.
  if (!i %% 5)
    print (i)
}

## Dans les calculs numeriques, TRUE vaut 1 et FALSE vaut 0.
a <- c("Impair", "Pair")
x <- c(2, 3, 6, 8, 9, 11, 12)
x %% 2
(!x %% 2) + 1
a[(!x %% 2) + 1]

## Un mot en terminant sur l'operateur '=='. C'est l'op�rateur
## a utiliser pour v�rifier si deux valeurs sont �gales, et
## non '='. C'est l� une erreur commune --- et qui peut �tre
## difficile � d�tecter --- lorsque l'on programme en R.
5 = 2                       # erreur de syntaxe
5 == 2                      # comparaison

###
### APPELS DE FONCTIONS
###

## Les invocations de la fonction 'matrix' ci-dessous sont
## toutes �quivalentes. On remarquera, entre autres, comment
## les arguments sont sp�cifi�s (par nom ou par position).
matrix(1:12, 3, 4)
matrix(1:12, ncol = 4, nrow = 3)
matrix(nrow = 3, ncol = 4, data = 1:12)
matrix(nrow = 3, ncol = 4, byrow = FALSE, 1:12)
matrix(nrow = 3, ncol = 4, 1:12, FALSE)

###
### QUELQUES FONCTIONS UTILES
###

## MANIPULATION DE VECTEURS
x <- c(50, 30, 10, 20, 60, 30, 20, 40) # vecteur non ordonn�

## S�quences de nombres.
seq(from = 1, to = 10)          # �quivalent � 1:10
seq_len(10)                     # plus rapide que 'seq'
seq(-10, 10, length = 50)       # incr�ment automatique
seq(-2, by = 0.5, along = x)    # m�me longueur que 'x'
seq_along(x)                    # plus rapide que 'seq'

## R�p�tition de nombres ou de vecteurs complets.
rep(1, 10)                  # utilisation de base
rep(x, 2)                   # r�p�ter un vecteur
rep(x, times = 2, each = 4) # combinaison des arguments
rep(x, times = 1:8)         # nombre de r�p�titions diff�rent
# pour chaque �l�ment de 'x'

## Classement en ordre croissant ou d�croissant.
sort(x)                     # classement en ordre croissant
sort(x, decr = TRUE)        # classement en ordre d�croissant
sort(c("abc", "B", "Aunt", "Jemima")) # cha�nes de caract�res
sort(c(TRUE, FALSE))        # FALSE vient avant TRUE

## La fonction 'order' retourne la position, dans le vecteur
## donn� en argument, du premier �l�ment selon l'ordre
## croissant, puis du deuxi�me, etc. Autrement dit, on obtient
## l'ordre dans lequel il faut extraire les donn�es du vecteur
## pour les obtenir en ordre croissant.
order(x)                    # regarder dans le blanc des yeux
x[order(x)]                 # �quivalent � 'sort(x)'

## Rang des �l�ments d'un vecteur dans l'ordre croissant.
rank(x)                     # rang des �l�ments de 'x'

## Renverser l'ordre d'un vecteur.
rev(x)

## Extraction ou suppression en t�te ou en queue de vecteur.
head(x, 3)                  # trois premiers �l�ments
head(x, -2)                 # tous sauf les deux derniers
tail(x, 3)                  # trois derniers �l�ments
tail(x, -2)                 # tous sauf les deux premiers

## Expressions �quivalentes sans 'head' et 'tail'
x[1:3]                      # trois premiers �l�ments
x[1:(length(x) - 2)]        # tous sauf les deux derniers
x[(length(x)-2):length(x)]  # trois derniers �l�ments
rev(rev(x)[1:3])            # avec petits vecteurs seulement
x[c(-1, -2)]                # tous sauf les deux premiers

## Seulement les �l�ments diff�rents d'un vecteur.
unique(x)

## RECHERCHE D'�L�MENTS DANS UN VECTEUR
which(x >= 30)              # positions des �l�ments >= 30
which.min(x)                # position du minimum
which.max(x)                # position du maximum
match(20, x)                # position du premier 20 dans 'x'
match(c(20, 30), x)         # aussi pour plusieurs valeurs
60 %in% x                   # 60 appartient � 'x'
70 %in% x                   # 70 n'appartient pas � 'x'

## ARRONDI
(x <- c(-21.2, -pi, -1.5, -0.2, 0, 0.2, 1.7823, 315))
round(x)                    # arrondi � l'entier
round(x, 2)                 # arrondi � la seconde d�cimale
round(x, -1)                # arrondi aux dizaines
ceiling(x)                  # plus petit entier sup�rieur
floor(x)                    # plus grand entier inf�rieur
trunc(x)                    # troncature des d�cimales

## SOMMAIRES ET STATISTIQUES DESCRIPTIVES
sum(x)                      # somme des �l�ments
prod(x)                     # produit des �l�ments
diff(x)                     # x[2] - x[1], x[3] - x[2], etc.
mean(x)                     # moyenne des �l�ments
mean(x, trim = 0.125)       # moyenne sans minimum et maximum
var(x)                      # variance (sans biais)
(length(x) - 1)/length(x) * var(x) # variance biais�e
sd(x)                       # �cart type
max(x)                      # maximum
min(x)                      # minimum
range(x)                    # c(min(x), max(x))
diff(range(x))              # �tendue de 'x'
median(x)                   # m�diane (50e quantile) empirique
quantile(x)                 # quantiles empiriques
quantile(x, 1:10/10)        # on peut sp�cifier les quantiles
summary(x)                  # plusieurs des r�sultats ci-dessus

## SOMMAIRES CUMULATIFS ET COMPARAISONS �L�MENT PAR �L�MENT
(x <- sample(1:20, 6))
(y <- sample(1:20, 6))
cumsum(x)                   # somme cumulative de 'x'
cumprod(y)                  # produit cumulatif de 'y'
rev(cumprod(rev(y)))        # produit cumulatif renvers�
cummin(x)                   # minimum cumulatif
cummax(y)                   # maximum cumulatif
pmin(x, y)                  # minimum �l�ment par �l�ment
pmax(x, y)                  # maximum �l�ment par �l�ment

## OP�RATIONS SUR LES MATRICES
(A <- sample(1:10, 16, replace = TRUE)) # avec remise
dim(A) <- c(4, 4)           # conversion en une matrice 4 x 4
b <- c(10, 5, 3, 1)         # un vecteur quelconque
A                           # la matrice 'A'
t(A)                        # sa transpos�e
solve(A)                    # son inverse
solve(A, b)                 # la solution de Ax = b
A %*% solve(A, b)           # v�rification de la r�ponse
diag(A)                     # extraction de la diagonale de 'A'
diag(b)                     # matrice diagonale form�e avec 'b'
diag(4)                     # matrice identit� 4 x 4
(A <- cbind(A, b))          # matrice 4 x 5
nrow(A)                     # nombre de lignes de 'A'
ncol(A)                     # nombre de colonnes de 'A'
rowSums(A)                  # sommes par ligne
colSums(A)                  # sommes par colonne
apply(A, 1, sum)            # �quivalent � 'rowSums(A)'
apply(A, 2, sum)            # �quivalent � 'colSums(A)'
apply(A, 1, prod)           # produit par ligne avec 'apply'

## PRODUIT EXT�RIEUR
x <- c(1, 2, 4, 7, 10, 12)
y <- c(2, 3, 6, 7, 9, 11)
outer(x, y)                 # produit ext�rieur
x %o% y                     # �quivalent plus court
outer(x, y, "+")            # � somme ext�rieure �
outer(x, y, "<=")           # toutes les comparaisons possibles
outer(x, y, pmax)           # idem

###
### STRUCTURES DE CONTR�LE
###

## Pour illustrer les structures de contr�le, on a recours �
## un petit exemple tout � fait artificiel : un vecteur est
## rempli des nombres de 1 � 100, � l'exception des multiples
## de 10. Ces derniers sont affich�s � l'�cran.
##
## � noter qu'il est possible --- et plus efficace --- de
## cr�er le vecteur sans avoir recours � des boucles.
(1:100)[-((1:10) * 10)]              # sans boucle !
rep(1:9, 10) + rep(0:9*10, each = 9) # une autre fa�on !

## Bon, l'exemple proprement dit...
x <- numeric(0)             # initialisation du contenant 'x'
j <- 0                      # compteur pour la boucle
for (i in 1:100)
{
  if (i %% 10)            # si i n'est pas un multiple de 10
    x[j <- j + 1] <- i  #     stocker sa valeur dans 'x'
  else                    # sinon
    print(i)            #     afficher la valeur � l'�cran
}
x                           # v�rification

## M�me chose que ci-dessus, mais sans le compteur 'j' et les
## valeurs manquantes aux positions 10, 20, ... , 100 sont
## �limin�es � la sortie de la boucle.
x <- numeric(0)
for (i in 1:100)
{
  if (i %% 10)
    x[i] <- i
  else
    print(i)
}
x <- x[!is.na(x)]
x

## On peut refaire l'exemple avec une boucle 'while', mais
## cette structure n'est pas naturelle ici puisque l'on sait
## d'avance qu'il faudra faire la boucle exactement 100
## fois. Le 'while' est plut�t utilis� lorsque le nombre de
## r�p�titions est inconnu. De plus, une boucle 'while' n'est
## pas n�cessairement ex�cut�e puisque le crit�re d'arr�t est
## �valu� d�s l'entr�e dans la boucle.
x <- numeric(0)
j <- 0
i <- 1                      # pour entrer dans la boucle [*]
while (i <= 100)
{
  if (i %% 10)
    x[j <- j + 1] <- i
  else
    print(i)
  i <- i + 1              # incr�menter le compteur!
}
x

## La remarque faite au sujet de la boucle 'while' s'applique
## aussi � la boucle 'repeat'. Par contre, le crit�re d'arr�t
## de la boucle 'repeat' �tant �valu� � la toute fin, la
## boucle est ex�cut�e au moins une fois. S'il faut faire la
## manouvre marqu�e [*] ci-dessus pour s'assurer qu'une
## boucle 'while' est ex�cut�e au moins une fois... c'est
## qu'il faut utiliser 'repeat'.
x <- numeric(0)
j <- 0
i <- 1
repeat
{
  if (i %% 10)
    x[j <- j + 1] <- i
  else
    print(i)
  if (100 < (i <- i + 1)) # incr�ment et crit�re d'arr�t
    break
}
x

###
### FONCTIONS ADDITIONNELLES
###

## La fonction 'search' retourne la liste des environnements
## dans lesquels R va chercher un objet (en particulier une
## fonction). '.GlobalEnv' est l'environnement de travail.
search()

## Liste de tous les packages install�s sur votre syst�me.
library()

## Chargement du package 'MASS', qui contient plusieurs
## fonctions statistiques tr�s utiles.
library("MASS")


     ### exercice 3.8 ###

# RESOLUTION 3.1
#a
rep(c(0,6),3)
#b
seq(1,10,by=3)
#c
rep(c(1,2,3),3)
#d
c(1,rep(2,2),rep(3,3))
rep(1:3, 1:3)
#e
rep(1:3,3:1)
#f
seq(1, 10, length = 3)

#g
c(rep(1,4),rep(2,4),rep(3,4))
rep(1:3, rep(4,3))
# RESOLUTION 3.2
#a
11:20/10
#b
2 * 0:9 + 1
#c
rep(-2:2,2)
#d
rep(-2:2,each=2)
#e
10*0:9+10

# RESOLUTION 3.3
#a
mat <- matrix(1:12, 3, 4)
apply(mat, 1, sum)
#b
apply(mat, 2, sum)
#c
apply(mat, 1, mean)
#d

apply(mat, 2, mean) 
# RESOLUTION 3.4
cumprod(1:10)

# RESOLUTION 3.5
x == (x %% y) + y * (x %/% y)

# RESOLUTION 3.6
#a
x[1:5]
head(x, 5)
#b
max(x)
#c
mean(x[1:5])
mean(head(x, 5))
head(x, 5)
#d
mean(x[16:20])
mean(x[(length(x) - 4):length(x)])  # plus g�n�ral
mean(tail(x, 5))                    # plus lisible!


# RESOLUTION 3.7
#a

(j - 1)*I + i
#b
((k - 1)*J + j - 1)*I + i

#RESOLUTION 3.8
mat1 <- matrix(1:70,10,7)
mat1    
#a

rowSums(mat1)    
#b
colMeans(mat1)
#c
head(mat1,3,2)
#d
max(mat[1:3, 1:3])
#e
mat[rowMeans(mat) > 7,] 

# RESOLUTION 3.9
temps <- c(10.06, 10.03, 10.02,  9.95, 10.04, 10.07,
           10.08, 10.05,  9.98, 10.09, 10.01, 10.00,
           9.97,  9.93,  9.96,  9.99,  9.92,  9.94,
           9.90,  9.86,  9.88,  9.87,  9.85,  9.91,
           9.84,  9.89,  9.79,  9.80,  9.82,  9.78,
           9.77)
names(temps) <- c("1964-10-15", "1968-06-20",
                  "1968-10-13", "1968-10-14", "1968-10-14",
                  "1968-10-14", "1968-10-14", "1975-08-20",
                  "1977-08-11", "1978-07-30", "1979-09-04",
                  "1981-05-16", "1983-05-14", "1983-07-03",
                  "1984-05-05", "1984-05-06", "1988-09-24",
                  "1989-06-16", "1991-06-14", "1991-08-25",
                  "1991-08-25", "1993-08-15", "1994-07-06",
                  "1994-08-23", "1996-07-27", "1996-07-27",
                  "1999-06-16", "1999-08-22", "2001-08-05",
                  "2002-09-14", "2005-06-14")

temps[match(unique(cummin(temps)), temps)]























