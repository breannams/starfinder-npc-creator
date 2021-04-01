require './config/environment'

use Rack::MethodOverride 
use NpcController
use SignupLoginLogoutController
run ApplicationController
