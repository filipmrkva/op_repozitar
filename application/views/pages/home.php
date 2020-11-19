<!DOCTYPE html>
<html>
    <head>
        <title>Domů</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link rel="stylesheet/less" type="text/css" href="styles.less">
        <script src="less.js" type="text/javascript"></script>
    </head>
    <body style="background-color:lightblue;">
        <div class="container">
            <div><br>&nbsp</div>
                <div class="jumbotron">
                    <h3 class="display-6"><u>Některé díla z aktuální maturitní četby</u></h3>
                     <p class="lead"><h6>Vítej na webu poskytující informace o aktuálních maturitních 
                         dílech známých autorů. Na stránce "autoři" lze vidět všechny autory seřazené 
                         v pořadí, zatímco na stránce díla lze vidět autory, jejich "díla" i číslo kategorie. 
                         Seznam čtyř dostupných kategorií lze vidět na úvodní straně "domů".</h6></p>
                     <img src="<?php echo base_url('images/Book.png'); ?>" width="70" height="70" alt="book"/>
                     <hr class="my-4">
                     <p>Web je vypracován jako opakovací projekt 2. ročníku v první polovině 3. ročníku střední školy, oboru IT,
                         na základě načítání dat z databáze. Web slouží jen jako projekt, 
                         tudíž data nemusí být později pravdivá.</p>
                     <a href="http://leteckaposta.cz/431006406">Dokumentace projektu - Filip Mrkva</a>
                     <div></div>
                     <a href="http://leteckaposta.cz/836147558">Kategorie (SQL)</a>
                     <div></div>
                     <a href="http://leteckaposta.cz/562347889">Knihy (SQL)</a>
                     <div></div>
                     <a href="http://leteckaposta.cz/339485511">Menu (SQL)</a>
                     <div class="text-center">
                     <div class="spinner-grow text-muted"></div>
                    <div class="spinner-grow text-primary"></div>
                    <div class="spinner-grow text-success"></div>
                    <div class="spinner-grow text-info"></div>
                    <div class="spinner-grow text-warning"></div>
                    <div class="spinner-grow text-danger"></div>
                    <div class="spinner-grow text-secondary"></div>
                    <div class="spinner-grow text-dark"></div>
                    <div class="spinner-grow text-light"></div>
                </div>
                </div>
            <div class="text-center">
                <h2><u>Kategorie maturitních děl použitých na aktuálním webu</u></h2>
            </div>
        <table class="table table-bordered table-striped table-dark">
                    <div><br>&nbsp</div>

    <?php foreach ($knihovna as $knihovny) { ?>
        <tr>
            <td><?= $knihovny->id_kategorie; ?></td>
            <td><?= $knihovny->kategorie; ?></td>
        </tr>
    <?php } ?>
        </table>
        <br>
        </div>       
    </body>
</html>