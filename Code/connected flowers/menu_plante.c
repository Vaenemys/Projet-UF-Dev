#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "données plantes.h"
void menu2()
{
    int choix;

    printf("bienvenue dans le menu secondaire\n");

    printf("1. Bouleau verruqueux\n");
    printf("2. Hetre \n");
    printf("3. Neflier d allemagne  \n");
    printf("4. Aubepine a deux styles  \n");
    printf("5. Sureau noir  \n");
    printf("6. Gouet d italie  \n");
    printf("7. Capillaire   \n");
    printf("8. Fougere femelle  \n");
    printf("9. Petite pervenche \n");
    printf("10. Scabieuse colombaire  \n");
    printf("11. Erable champetre  \n");
    printf("12. Charme   \n");
    printf("13. Groseiller à maquereaux  \n");
    printf("14. Frene commun  \n");
    printf("15. Merisier  \n");
    printf("16. Clemative vigne blanche  \n");
    printf("17. Rosier des chiens   \n");
    printf("18. Achillee millefeuille  \n");
    printf("19. Bugle de geneve  \n");
    printf("20. Guimauve officinale  \n");
    printf("21. Sorbier des oiseleurs  \n");
    printf("22. Cornouiller sanguin  \n");
    printf("23. Noisetier  \n");
    printf("24. Saule blanc  \n");
    printf("25. Viorne obier  \n");
    printf("26. Troene  \n");
    printf("27. Chevrefeuille des bois  \n");
    printf("28. Bourdaine  \n");
    printf("29.Germandree petit chene   \n");
    printf("30.Rosier pimprenelle    \n");
	printf("31. Retour au menu principal \n")


    printf("choissisez votre plante entre 1 et 30, ou bien tapez 31 pour revenir au menu principal.\n");

    do
    {
        scanf("%d",&choix);
        system("cls");
		if (choix == 1)
			BouleauVerruqueux();

		else if (choix == 2)
			Hetre();

		else if (choix == 3)
			Neflierdallemagne();

		else if (choix == 4)
			Aubepineadeuxstyles();

		else if (choix == 5)
			Sureaunoir();

		else if (choix == 6)
			Gouetditalie();

		else if (choix == 7)
			Capillaire();
		else if (choix == 8)
			Fougerefemelle();

		else if (choix == 9)
			Petitepervenche();

		else if (choix == 10)
			Scabieusecolombaire();


		else if (choix == 11)
			Erablechampetre();

		else if (choix == 12)
			Charme();

		else if (choix == 13)
			Groseilleramaquereaux();

		else if (choix == 14)
			Frenecommun();

		else if (choix == 15)
			Merisier();

		else if (choix == 16)
			Clemativevigneblanche();

		else if (choix == 17)
			Rosierdeschiens();

		else if (choix == 18)
			Achilleemillefeuille();

		else if (choix == 19)
			Bugledegeneve();

		else if (choix == 20)
			Guimauveofficinale();

		else if (choix == 21)
			Sorbierdesoiseleurs();

		else if (choix == 22)
			Cornouillersanguin();


		else if (choix == 23)
			Noisetier();

		else if (choix == 24)
			Sauleblanc();


		else if (choix == 25)
			Viorneobier();

		else if (choix == 26)
			Troene();

		else if (choix == 27)
			Chevrefeuilledesbois();

		else if (choix == 28)
			Bourdaine();

		else if (choix == 29)
			Germandreepetitchene();

		else if (choix == 30)
			Rosierpimprenelle();

		else if (choix == 31)
			menu1();


        else(choix > 31 || choix < 1);
            printf("choissisez entre 1 et 31\n");
            scanf("%d",&choix);
    }
    while (choix < 1 || choix > 31);
}

