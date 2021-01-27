    <div class="container">
      <div class="row">
        <div class="col">
          <form>
<?php foreach (array_keys($template['user']) as $user_label) { ?>
<?php if ($user_label == 'salt') continue ?>
            <div class="form-group">
              <label for="<?php echo $user_label; ?>"><?php echo ucfirst($user_label).':'; ?></label>
              <input type="text" class="form-control" id="<?php echo $user_label; ?>" name="<?php echo $user_label; ?>" value="<?php echo $template['user'][$user_label]; ?>" <?php if ($user_label == 'email') echo 'readonly' ?> />
            </div>
<?php } ?>
            <button type="submit" class="btn btn-primary">Save</button>
          </form>
        </div>
      </div>
      <div class="row mt-3">
        <div class="col">
          <div class="alert d-none invisible" role="alert"></div>
        </div>
      </div>
    </div>
