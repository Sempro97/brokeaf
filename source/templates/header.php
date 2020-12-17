    <header class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="d-flex align-items-center justify-content-between">
            <div class="pr-2">
              <button type="button" class="btn btn-dark">
                <span class="fas fa-bars"></span>
              </button>
            </div>
            <div class="p-2">
              <h1 class="text-center">BrokeAF</h1>
            </div>
            <!-- This search bar is only visible for wider than small (sm) screens -->
            <div class="p-2 d-none d-md-block flex-fill">
              <div class="input-group">
                <input type="text" class="form-control" />
                <div class="input-group-append">
                  <button class="btn btn-outline-secondary" type="button">
                    <i class="fas fa-search"></i>
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
          <div class="col-12">
            <div class="input-group">
              <input type="text" class="form-control" />
              <div class="input-group-append">
                <button class="btn btn-outline-secondary" type="button">
                  <span class="fas fa-search"></span>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>