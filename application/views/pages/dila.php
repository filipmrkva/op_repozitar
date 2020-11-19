<!DOCTYPE html>
<html>
    <head>
        <title>Díla</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link rel="stylesheet/less" type="text/css" href="styles.less">
        <script src="less.js" type="text/javascript"></script>
    </head>
    <body style="background-color:lightyellow;">
        <div class="container">
            <div class="text-center">
                <div><br>&nbsp</div>
                <h2><u>Díla ke státní maturitě a jejich kategorie</u></h2>
            </div>
        <table class="table table-bordered table-striped table-dark">
                    <div><br>&nbsp</div>

    <?php foreach ($knihovna as $knihovny) { ?>
        <tr>
            <td><?= $knihovny->id_knihy; ?></td>
            <td><?= $knihovny->autor; ?></td>
            <td><?= $knihovny->nazev_knihy; ?></td>
            <td><?= $knihovny->kategorie_id_kategorie; ?></td>
        </tr>
    <?php } ?>
        </table>
        <br>
        </div>       
    </body>
</html>