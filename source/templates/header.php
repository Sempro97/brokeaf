<?php
$email = $_SESSION['email'];
$notifications = $database->get_notifications($email);
$notifications_count = count($notifications);
$notifications_dropdown_item_text = 'Notifications';
if ($notifications_count > 0) {
    $notifications_dropdown_item_text .= ' - <span class="fas fa-envelope"></span>';
}
$seller = $database->is_seller($email);
$user = $database->is_user($email);
$icon = $user ? 'fa-user' : ($seller ? 'fa-user-tie' : '');
$cart_button_status = $seller ? 'disabled' : '';
?>
    <header>
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="d-flex align-items-center justify-content-between">
              <div class="pr-2">
                <div class="dropdown">
                  <button class="btn btn-dark" type="button" id="dropdown-button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="fas fa-bars"></span>
                  </button>
                  <ul class="dropdown-menu" aria-labelledby="dropdown-button">
                    <li>
<?php if ($seller) { ?>
                      <a class="dropdown-item" href="add-item.php">Add item</a>
<?php } ?>
                      <a class="dropdown-item" href="categories.php">Categories</a>
<?php if ($seller || $user) { ?>
                      <a class="dropdown-item" href="notifications.php"><?php echo $notifications_dropdown_item_text; ?></a>
<?php } if ($user) { ?>
                      <a class="dropdown-item" href="user-orders.php">Orders</a>
<?php } if ($seller || $user) { ?>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item disabled"><?php echo $email; ?> - <span class="fas <?php echo $icon; ?>"></span></a>
<?php } ?>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="p-2 pt-3">
                <span class="d-block h1 text-center">BrokeAF</span>
              </div>
              <!-- This search bar is only visible for wider than small (sm) screens -->
              <div class="p-2 d-none d-md-block flex-fill">
                <form action="index.php">
                  <div class="input-group">
                    <label for="search-big" class="sr-only">Search:</label>
                    <input type="text" id="search-big" class="form-control rounded-left" name="search" value="<?php echo $template['search']; ?>" />
                    <div class="input-group-append">
                      <button class="btn btn-outline-secondary" type="submit">
                        <span class="fas fa-search"></span>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
              <div class="pl-2">
                <button type="button" class="btn btn-dark <?php echo $cart_button_status; ?>">
                  <span class="fas fa-shopping-cart"></span>
                </button>
              </div>
            </div>
          </div>
        </div>
        <!-- This search bar is only visible for smaller than medium (md) screens -->
        <div class="d-block d-md-none">
          <div class="row">
            <div class="col">
              <form action="index.php">
                <div class="input-group pb-4">
                  <label for="search-small" class="sr-only">Search:</label>
                  <input type="text" id="search-small" class="form-control rounded-left" name="search" value="<?php echo $template['search']; ?>" />
                  <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="submit">
                      <span class="fas fa-search"></span>
                    </button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </header>
