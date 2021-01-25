    <div class="container">
      <div class="row">
        <div class="col">
          <form>
            <!-- Image -->
            <div class="form-group">
              <label for="image">Image:</label>
              <input type="file" class="form-control-file" id="image" name="image" required="required"/>
            </div>
            <!-- Name -->
            <div class="form-group">
              <label for="name">Name:</label>
              <input type="text" class="form-control" id="name" name="name" required="required"/>
            </div>
            <!-- Description -->
            <div class="form-group">
              <label for="description">Description:</label>
              <textarea class="form-control" id="description" name="description" required="required"></textarea>
            </div>
            <!-- Price -->
            <div class="form-group">
              <label for="price">Price:</label>
              <div class="input-group">
                <input type="number" class="form-control" id="price" name="price" min="0" step="0.01" required="required"/>
                <div class="input-group-append">
                  <span class="input-group-text">€</span>
                </div>
              </div>
            </div>
            <!-- Quantity -->
            <div class="form-group">
              <label for="quantity">Quantity:</label>
              <input type="number" class="form-control" id="quantity" name="quantity" min="1" step="1" required="required"/>
            </div>
            <!-- Category -->
            <div class="form-group">
              <label for="category">Category:</label>
              <select class="form-control" id="category" name="category">
<?php foreach ($template['categories'] as $category) { ?>
                <option><?php echo $category; ?></option>
<?php } ?>
              </select>
            </div>
            <!-- Serial code -->
            <div class="form-group">
              <label for="serial_code">Serial code:</label>
              <input type="text" class="form-control" id="serial_code" name="serial_code" required="required"/>
            </div>
            <!-- Submit -->
            <button type="submit" class="btn btn-primary">Add item</button>
          </form>
        </div>
      </div>
      <div class="row mt-3">
        <div class="col">
          <div class="alert d-none invisible" role="alert"></div>
        </div>
      </div>
    </div>
