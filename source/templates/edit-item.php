<?php $item = $template['item']; ?>
    <div class="container">
      <div class="row">
        <div class="col">
          <form id="edit">
            <!-- Name -->
            <div class="form-group">
              <label for="name">Name:</label>
              <input type="text" class="form-control" id="name" name="name" required="required" value="<?php echo $item['name']; ?>" />
            </div>
            <!-- Description -->
            <div class="form-group">
              <label for="description">Description:</label>
              <textarea class="form-control" id="description" name="description" required="required"><?php echo $item['description']; ?></textarea>
            </div>
            <!-- Price -->
            <div class="form-group">
              <label for="price">Price:</label>
              <div class="input-group">
                <input type="number" class="form-control" id="price" name="price" min="0" step="0.01" required="required" value="<?php echo $item['price']; ?>" />
                <div class="input-group-append">
                  <span class="input-group-text">€</span>
                </div>
              </div>
            </div>
            <!-- Quantity -->
            <div class="form-group">
              <label for="quantity">Quantity:</label>
              <input type="number" class="form-control" id="quantity" name="quantity" min="1" step="1" required="required" value="<?php echo $item['quantity']; ?>" />
            </div>
            <!-- Category -->
            <div class="form-group">
              <label for="category">Category:</label>
              <select class="form-control" id="category" name="category">
                <?php foreach ($template['categories'] as $category) { ?>
                <option><?php echo $category; ?></option><?php } ?>
              </select>
            </div>
            <!-- Serial code -->
            <div class="form-group">
              <label for="serial_code">Serial code:</label>
              <input type="text" class="form-control" id="serial_code" name="serial_code" required="required" value="<?php echo $item['serialCode']; ?>" readonly/>
            </div>
            <!-- Submit -->
            <button type="submit" class="btn btn-primary">Save changes</button>
          </form>
          <form id="delete" class="mt-3">
            <!-- Serial code -->
            <div class="d-none form-group">
              <label for="serial_code">Serial code:</label>
              <input type="text" class="form-control" id="serial_code" name="serial_code" required="required" value="<?php echo $item['serialCode']; ?>" readonly/>
            </div>
            <button type="submit" class="btn btn-danger">Delete item</button>
          </form>
        </div>
      </div>
      <div class="row mt-3">
        <div class="col">
          <div class="alert d-none invisible" role="alert"></div>
        </div>
      </div>
    </div>
