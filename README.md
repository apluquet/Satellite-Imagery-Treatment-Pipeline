# Pansharpening ou fusion des bandes

## Dans quelles circontances cela est utile

Les images **panchromatiques** sont obtenues à partir de l'enregistrement du rayonnement dans un unique intervalle de longueur d'onde situé dans le domaine du visible, càd entre 0,4 et 0,7 m.
Comme les données ne sont acquises que dans un seul canal, seules des images en noir et blanc peuvent être obtenues (si l'image est codée sur 8 bits, elle sera visualisable en 255 niveaux de gris). Bien que moins riche du point de vue de la **résolution spectrale**, l'image panchromatique offre une **résolution spatiale** plus importante.

Au travers de la combinaison entre la résolution spatiale d’une image panchromatique (nuances de gris)
détaillée avec l’information colorée d’une image multispectrale moins détaillée, nous obtenons une 
image colorée à très haute résolution.

![Pansharpening example](https://www.geosage.com/highview/figures/definition_qb.gif)

## Contributors

**Adrien ANTON LUDWIG** - IMAGE 2023

**Adèle PLUQUET** - IMAGE 2023

## Sources

- [Panchromatique](https://eo.belspo.be/fr/les-images-de-teledetection)
- [4 types de résolution dans les satellites](https://eo.belspo.be/fr/actualites/resolution-spectrale)
## Usage

```
$ mkdir build && cd build
$ cmake ..
$ make
$ ./pansharpening [image]
```
