# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

use Rack::MethodOverride
use ArtistController
use GenreController
use SongController
run ApplicationController
