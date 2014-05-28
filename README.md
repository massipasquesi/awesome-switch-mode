**AWESOME-SWITCH-MODE**

Ce dépôt contient des fichier de ma configuration **_AWESOME_** (Le gestionnaire de fenêtres )

Pour qui ne le connait pas :
http://awesome.naquadah.org/
http://www.linuxpedia.fr/doku.php/awesome

Je travaille et je l'utilise ou l'ai utilisé sous Debian 6 et 7, Ubuntu 11.04 et 12.04

**Pourquoi _awesome-switch-mode_**

Au demarrage de *awesome* je charge des applets comme *nm-applet* et à chaque fois que je recharge *awesome* (comme quand j'execute *xrandr*) *nm-applet* est dupliqué (ça peut sans doute arriver à d'autres applets).

Pour eviter ça j'ai mis en place un système avec deux modes de config *awesome* :
* **mod-clean** config à charger au demarrage
* **mod-test** config pour effectuer des tests

Si je relance **_AWESOME_** en *mod-clean* certains des applets sont chargé en double.

Le *mod-test* me permet de relancer **_AWESOME_** sans charger en double les applets trop volontaires ;)

Je m'en sert par exemple pour tester un nouveau fond d'écran au moment de relancer awesome.

A la fin de mon **rc.lua** j'include un autre fichier de configuration qui charge des applets **rc-include.lua**.

Je switch d'un mode à l'autre en changent la cible du lien *rc-include.lua*

Dans ce dépôt vous trouverez :
* mon *rc.lua* (regardez la fin et eventuellement la section Key Bindings)
* *mod-test.lua*
* *mod-clean.lua*
* *ll-awesome-config* (qui contien le ls -la de mon dossier *~/.config/awesome*)
* un dossiers *scripts/* qui contient 3 scripts qui me servent à changer de mode en utilisant des raccourcis
    * *mod-test.sh*
    * *mod-clean.sh*
    * *toggle-mod.sh*


**COMMENT METTRE EN PLACE LES MODES AWESOME**

On travaille dans le dossier *~/.config/awesome/*

* Créer un fichier *mod-clean.lua* dans lequel vous appellé les applets exterieur à awesome; comme nm-applet par exemple (regardez mon *mod-clean.lua* à guise d'exemple)

* Créer un fichier *mod-test.lua* dans lequel vous ne mettez RIEN ou à la limite des commentaire avec des applets que vous voudrez utiliser un jour (regardez mon *mod-test.lua* à guise d'exemple)

* Créer un lien symbolique vers *mod-clean.lua* nommé *rc-include.lua* :
    ```bash
    ln -s mod-clean.lua rc-include.lua
    ```

* Dans rc.lua à la fin on fait un include de *rc-include.lua* :
    ```lua
    -- {{
    -- rc-include ( apllet à ne pas charger plusieurs fois )
    require("rc-include")
    --}}
    ```

* Pour passer au mod-test :
    ```bash
    ln -sf mod-test.lua rc-include.lua
    ```
     
**Pour mettre en place des raccourcis pour changer rapidement de mode :**

* Copier les trois scripts qui sont dans le dossier *scripts/* dans votre *~/.config/awesome/scripts/*

* Dans votre *rc.lua* dans la section Key bindings (regardez dans mon *rc.lua* lignes 235-238)
    ```lua
    -- Switch rc.lua mode
    awful.key({ modkey, "Control" }, "t", function () awful.util.spawn(awful.util.getdir("config") .. "/scripts/mod-test.sh") end),
    awful.key({ modkey, "Control" }, "y", function () awful.util.spawn(awful.util.getdir("config") .. "/scripts/mod-clean.sh") end),
    awful.key({ modkey, "Shift" }, "t", function () awful.util.spawn(awful.util.getdir("config") .. "/scripts/toggle-mod.sh") end),
    ```
    Vous pouvez bien evidemment mettre les racourcis que plus vous plaisent.


**ENJOY :D**


