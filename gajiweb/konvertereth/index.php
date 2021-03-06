<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Converter Kripto</title>
    <script src="https://cdn.jsdelivr.net/npm/web3@latest/dist/web3.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/moralis/dist/moralis.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="./style.css">
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Konverter</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
         
                </li>
                
            </ul>
            
            <a href=" http://localhost/dalto/gajiweb/admin/index.php" class="btn btn-outline-primary my-2 my-sm-0" ><i class="fa fa-credit-card"> </i> Halaman Admin</a>&nbsp
           
            <a href="http://localhost:3000/" class="btn btn-outline-primary my-2 my-sm-0" ><i class="fa fa-credit-card"> </i> Transfer </a>&nbsp
            <button id="login_button" class="btn btn-outline-primary my-2 my-sm-0" type="submit">Masuk dengan MetaMask</button>
        </div>
      </nav>
      <div style="display: flex; justify-content: center; padding: 15px;">
    <iframe
      style="--border-radius: 10px; box-shadow: 0 2px 10px 0 rgba(0,0,0,.20); border-radius: var(--border-radius); margin: auto;max-width: 420px"
      src="https://widget.onramper.com?color=266677&apiKey=pk_test_UqpQ8_F_0ExWtuoKsWUSUma0NwPq0dC9E6S3K4ddjBA0"
      height="660px"
      width="482px"
      title="Onramper widget"
      frameborder="0"
      allow="accelerometer; autoplay; camera; gyroscope; payment"
    >
    </iframe>
  </div>
    <script type="text/javascript" src="./main.js"></script>
  </body>
</html>