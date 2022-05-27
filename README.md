# Satellite imagery treatment pipeline : band combination, pansharpening & mosaicing

## Dans quelles circontances cela est utile

### Band combination

Un satellite capture différentes bandes, chacune étant réservée à des longueurs d'ondes spécifiques. Elles peuvent être combinées de différentes manières pour obtenir différentes informations. Vous pouver voir différentes combinaisons utiles en suivant [ce lien](https://gisgeography.com/landsat-8-bands-combinations/).

Pour ce projet, notre but est de récupérer une image dont les couleurs sont proches des couleurs naturelles. Nous allons donc utiliser les bandes rouge, verte, bleue et panchromatique (noir et blanc).

L'image obtenue en combinant simplement les canaux R, G et B est très sombre. Nous utilisons une égalisation d'histogramme CLAHE afin d'éclaircir celle-ci en augmentant les contrasts.

### Pansharpening

Les images **panchromatiques** sont obtenues à partir de l'enregistrement du rayonnement dans un unique intervalle de longueur d'onde situé dans le domaine du visible, càd entre 0,4 et 0,7 m.
Comme les données ne sont acquises que dans un seul canal, seules des images en noir et blanc peuvent être obtenues (si l'image est codée sur 8 bits, elle sera visualisable en 255 niveaux de gris). Bien que moins riche du point de vue de la **résolution spectrale**, l'image panchromatique offre une **résolution spatiale** plus importante.

Au travers de la combinaison entre la résolution spatiale d’une image panchromatique (nuances de gris)
détaillée avec l’information colorée d’une image multispectrale moins détaillée, nous obtenons une 
image colorée à très haute résolution.

![Pansharpening example](https://www.geosage.com/highview/figures/definition_qb.gif)

### Mosaicing

Pour obtenir des images d'une grande surface, il faut relier plusieurs images capturées par le satellite. C"est le but du mosaicing, suivant le même principe que la création d'un panorama.

![Couverture satellite de la France](https://images-ext-2.discordapp.net/external/4p7SjYIcn5f5iLTYfIfMQNWeuqEz8khNw533A643jfU/%3Ft%3D1392906248652/https/ids.equipex-geosud.fr/documents/10180/26536/emrpise_france_landsat8.jpg/fd1e7f5b-30b6-4de0-9f5f-51374f011655?width=1064&height=684)
*Couverture de la France par Landsat 8*

## Resultats

### Band combination

| Avant | Après |
| ------ | ------|
| ![Band combination before](/images/results/band_combination_dark.png) | ![Band combination after](/images/results/band_combination_bright.png) |

### Pansharpening

| Avant | Après |
| ------ | ----- |
| ![Pansharpening before](/images/results/lyon_rgb.png) | ![Pansharpening after](/images/results/lyon_pansharpened.png) |

### Mosaicing

![Mosaicing matching](/images/results/matching_color.png)
![Mosaicing result](/images/results/mosaic_color_hd.jpeg)

## Contributeurs

**Adrien ANTON LUDWIG** - IMAGE 2023

**Adèle PLUQUET** - IMAGE 2023

## Sources

- [Les 4 types de résolution dans les satellites (spatiale, temporelle, radiométrique et spectrale)](https://eo.belspo.be/fr/actualites/resolution-spectrale)

- [Résolutions spectrale et spatiale](https://eo.belspo.be/fr/les-images-de-teledetection)

- [Utilité du pansharpening](https://eos.com/make-an-analysis/panchromatic/)

- [Landsat 8](https://www.usgs.gov/landsat-missions/landsat-8) & [Landsat 9](https://www.usgs.gov/landsat-missions/landsat-9) (spécificités)

- [Site d'accès gratuit aux images satellitaires](https://earthexplorer.usgs.gov/) & [Vidéo d'explication de son utilisation](https://www.youtube.com/watch?v=GmwBJT3ioao&ab_channel=KlasKarlsson)

- [Guide des différentes images disponibles (différents satellites) et recensement d'où les trouver](https://ids.equipex-geosud.fr/web/guest/images-landsat-8)

- [Explication pansharpening HSV (vidéo)](https://www.youtube.com/watch?v=-139c169pKQ&ab_channel=ThalesSehnK%C3%B6rting)

- [Quelques algorithmes de pansharpening expliqués](https://pro.arcgis.com/fr/pro-app/latest/help/analysis/raster-functions/fundamentals-of-pan-sharpening-pro.htm)

- Papiers comparant différentes méthodes de pansharpening :
    - https://www.ipol.im/pub/art/2014/98/article_lr.pdf
    - https://hal-mines-paristech.archives-ouvertes.fr/hal-01024987/document  & [vidéo correspondante](https://www.youtube.com/watch?v=9TgU6migUy0&ab_channel=MITEducation)

- [Récupérer des données satellites avec Python (librairie datacube)](https://docs.dea.ga.gov.au/notebooks/Frequently_used_code/Pan_sharpening_Brovey.html)

- [Lissage des couleurs lors du mosaicing](https://hal.archives-ouvertes.fr/hal-01373314/file/cresson2015.pdf)


## Usage

1. Lancer `get_data.py` pour récupérer les bandes du satellite nécessaires pour utiliser les notebooks. 
2. Lancer le notebook `band-combination.ipynb` sur les données de Lyon et Lausanne.
3. Lancer le notebook `hsv-pansharpening-satellite.ipynb` sur les données de Lyon et Lausanne.
4. Lancer le notebook `mosaicing-satellite.ipynb` pour obtenir le résultat final.

