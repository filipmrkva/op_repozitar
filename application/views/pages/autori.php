<html>
    <head>
        <title>Autoři</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body style="background-color:lightgreen;">
    <div class="container">
        <div class="text-center">
        <div><br>&nbsp</div>
    <h2><u>Autoři maturitních děl použitých na aktuálním webu</u></h2>
    <h5>Anotaci daných knih lze zobrazit kliknutím na dílo daného autora,
        které se vždy nachází na pravé straně. Anotace je vypsána pouze u dvou 
        děl jako ukázka a to u díla Robinson Crusoe a Sbohem Armádo. U ostatních je 
        vypsán pouze generovaný text Lorem ipsum.</h5>
    <br>
    
   <table class="table table-bordered table-striped table-dark">
        <?php foreach ($anotace as $text) { ?>
            <tr>
                <td><?= $text->autor; ?></td>
                <td class="text-center">
                    <a style="color:white" href="<?php echo base_url('pages/autoriKlik/'.$text->id_knihy) ?>">
                            <?= $text->nazev_knihy; ?>
                    </a>
                </td>
            </tr>
        <?php } ?>
    </table>
    </div>
    </div>
        
    </body>
</html>