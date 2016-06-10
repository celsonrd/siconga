<?php if(isset($_SESSION)) {
    echo $this->session->flashdata('flash_data');
}?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
    <title>SIstema de COntrole GAstos</title>
    <link rel="stylesheet" href="<?php echo base_url('public/css/form.css')?>">
  </head>
  <body>  
    <h1>SICONGA</h1>
    <?php if(isset($_SESSION)) {
        echo $this->session->flashdata('flash_data');
    } ?>
    <section class="login">
    <form class="login-form" action="<?= site_url('login') ?>" method="post">      
      <!-- The Username Field -->
      <label for="username">Login
        <input type="text" name="username" id="username" required="true" />
      </label>
    
      <!-- The Password Field -->
      <label for="password">Senha
        <input type="password" name="password" id="password" />
      </label>
        
      <!--
      The Remember Me Checkbox
      <input type="checkbox" name="remember" id="remember" />
      <label class="check" for="remember"><span></span>Remember Me</label>
      -->
    
      <!-- Clearn both sides -->
      <div class="clear"></div>
        
      <!-- Recover Button -->
      <input type="button" value="Limpar" />
        
      <!-- The Login Button -->
      <input type="submit" value="Login" />
    </form>
    </section>
  </body>
</html>