<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Test rakna</title>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>

<form action="?" id="searchForm">
    <input type="text" placeholder="Search..." name="s" id="food">
    <input type="submit" value="Search">
</form>
<!-- the result of the search will be rendered inside this div -->
<div id="result">
</div>

<script>
    $('#searchForm').submit(function(event) {

        // Stop la propagation par défaut
        event.preventDefault();

        // Récupération des valeurs
        var $form = $(this),
            term = $form.find( "input[name='s']" ).val(),
            url = $form.attr( "action" );

        // Envoie des données
        var posting = $.post( 'more.php', { s: term } );

        // Reception des données et affichage
        posting.done(function(data) {
            var content = $(data).find('#content');
            $('#result').empty().append(content);
            console.log('valeur ' + term);
        });

    });

</script>

</body>
</html>





<!--<script>
    $('#searchForm').submit(function(event){
        event.preventDefault();
        var food = $('#food').val();
        $.ajax({
            data: 'food=' + food,
            url: 'more.php',
            cache: false,
            method: 'POST',
            dataType: 'html',
            beforeSend: function() {
                majax('Chargement...');
            },
            success: function(newHTML, textStatus, jqXHR) {
                $('#searchForm, #result').empty();
                $(newHTML).appendTo('#searchForm').show(3000);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                majax('Aliment incorrect');
            }
        });
        return false;
    });
</script> -->