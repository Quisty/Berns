<?php
require_once 'core/init.php';
$user = new User();
if(!$user->isLoggedIn()) {
    Redirect::to('index.php');
}
if(Input::exists()) {
    if(Token::check(Input::get('token'))) {
        $validate = new Validate();
        $validation = $validate->check($_POST, array(
            'current_password' => array(
                'required' => true,
                'min' => 6
            ),
            'new_password' => array(
                'required' => true,
                'min' => 6
            ),
            'new_password_again' => array(
                'required' => true,
                'min' => 6,
                'matches' => 'new_password'
            )
        ));
    }
    if($validate->passed()) {
        if(Hash::make(Input::get('current_password'), $user->data()->salt) !== $user->data()->password) {
            echo 'Your current password is wrong.';
        } else {
            $salt = Hash::salt(32);
            $user->update(array(
                'password' => Hash::make(Input::get('new_password'), $salt),
                'salt' => $salt
            ));
            Session::flash('home', '<div class="alert alert-success alert-dismissible" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>Din adgangskode er blevet opdateret!
</div>');
            Redirect::to('index.php');
        }
    } else {
        foreach($validate->errors() as $error) {
            echo $error, '<br>';
        }
    }
}
?>
<div class="col-xs-12 col-md-6">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3>Opdater din adgangskode</h3>
        </div>
        <div class="panel-body">
            <form action="" method="post">
                <div class="field form-group">
                    <label for="current_password">Adgangskode</label>
                    <input type="password" name="current_password" id="current_password" class="form-control">
                </div>
                <div class="field form-group">
                    <label for="new_password">Ny adgangskode</label>
                    <input type="password" name="new_password" id="new_password" class="form-control">
                </div>

                <div class="field form-group">
                    <label for="new_password_again">Gentag adgangskode</label>
                    <input type="password" name="new_password_again" id="new_password_again" class="form-control">
                </div>

                <input type="hidden" name="token" id="token" value="<?php echo escape(Token::generate()); ?>">
                <input type="submit" value="Change Password" class="btn btn-primary">
            </form>
        </div>
    </div>
</div>
</div>