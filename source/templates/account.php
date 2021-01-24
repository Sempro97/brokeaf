<div class="container">
  <div class="row">
    <div class="col">
      <form>

        <!-- Per ogni chiave crea un input con la label -->
        <?php foreach (array_keys($template['user']) as $userLabel) { ?>

          <div class="form-group">
            <label for="<?php echo $userLabel; ?>">
                <?php echo ucfirst($userLabel); ?> :
              </label>
            <input type="text"
            class="form-control"
            id="<?php echo $userLabel; ?>" 
            name="<?php echo $userLabel; ?>" 
            value="<?php echo $template["user"][$userLabel]; ?>"/>
          </div>
        <?php } ?>

        <!-- Submit -->
        <button type="submit" class="btn btn-primary">Save</button>
      </form>
    </div>
  </div>
  <!-- Alert per mostrare errori ajax -->
  <div class="row mt-3">
    <div class="col">
      <div class="alert d-none invisible" role="alert"></div>
    </div>
  </div>
</div>
