<?php

session_start();
ob_start();
include_once ('conexao/conexao.php');
?>
<!-- CÓDIGO AO CLICAR NO LINK E FECHA NOS DISPOSITIVOS MÓVEIS  -->
            <script type="text/javascript">
                document.addEventListener("DOMContentLoaded", function(){
                   var links = document.querySelectorAll(".navbar-nav li a:not([href='#'])");
                   for(var x=0; x<links.length; x++){
                      links[x].onclick = function(){
                         document.querySelector("button.navbar-toggler").click();
                      }
                   }
                });
            </script>
            <!-- FIM  -->


            <!-- STYLE PERFIL USUÁRIO-->

               <style>
                  img {
                     width: 30px; 
                     height: 30px;  
                     border-radius: 50%;
                  }
                  span{
                     color: white;
                     padding-left: 10px;
                  }
                  .menu-perfil{
                     margin-left: 500px;
                  }

                  @media screen and (max-width: 480px){

                  .menu-perfil{
                     margin-left: 0;
                  }
                  }
                  @media screen and (min-width: 481px) and (max-width: 768px){
                  .menu-perfil{
                     margin-left: 0;
                  }     
                  }
               </style>

            <!-- FIM STYLE PERFIL USUÁRIO-->

            <!-- NAVEGADOR ------------------------------------>

            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
             
              <div class="container">
                <a class="navbar-brand" href="#"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarsExample07">
                  <ul class="navbar-nav mr-auto">
                  	<li class="nav-item">
                      <a class="nav-link" href="<?php echo URL ?>home">Home</a>
                    </li>
                    <li class="nav-item">
                    <li class="nav-item">
                      <a class="nav-link" href="<?php echo URL ?>cadastro">Cadastros</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="<?php echo URL ?>lista">Lista</a>                      
                    </li>

                    <li class="nav-item">
                      <a class="nav-link" href="<?php echo URL ?>sair">Sair</a>
                    </li>
                   
                      <li class="nav-item menu-perfil">
                         <a class="nav-link" href="perfil"><img src="assets/images/<?php echo $_SESSION['imagem'] ?>">
                        <span><?php echo $_SESSION['nome']; ?></span></a>
                       </li>
                            
                  </ul>               


                  
                </div>
              </div>
            </nav>

            <!-- FIM NAVEGADOR --------------------------->