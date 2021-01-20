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
                      <a class="dropdown-item" href="#">Notifications</a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="p-2 pt-3">
                <h1 class="text-center">BrokeAF</h1>
              </div>
              <!-- This search bar is only visible for wider than small (sm) screens -->
              <div class="p-2 d-none d-md-block flex-fill">
                <div class="input-group">
                  <label for="search-big" class="sr-only">Search:</label>
                  <input type="text" id="search-big" class="form-control" />
                  <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button">
                      <span class="fas fa-search"></span>
                    </button>
                  </div>
                </div>
              </div>
              <div class="pl-2">
                <button type="button" class="btn btn-dark">
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
              <div class="input-group pb-4">
                <label for="search-small" class="sr-only">Search:</label>
                <input type="text" id="search-small" class="form-control" />
                <div class="input-group-append">
                  <button class="btn btn-outline-secondary" type="button">
                    <span class="fas fa-search"></span>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
