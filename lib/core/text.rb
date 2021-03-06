require 'paint'
#
# Text and printing utility methods
#
module Rise
  module Text
    TASKS_HELP =
    %Q{    init                             Reinitialize your password hash. (You will lose you old hash FOREVER)
    update                           Updates the current rise-cli installation (aliased by -u)
    version                          Show the `rise` version and exit

#{Paint['Examples:', '#95a5a6']}
    #{Paint['$ rise init --verbose', '#2ecc71']}            Reinitializes your password with verbose output
    #{Paint['$ rise -d ../my-project -o', '#2ecc71']}       Will upload all files in `../my-project` and open it in a browser
    }

    #
    # Prints +msg+ if the +RISE_VERBOSE+ environment variable is set to 'yes' (set with --verbose)
    #
    def self.vputs(msg='')
      puts("[" + Paint["VERBOSE", "yellow"] + "] - " + msg) if ENV['RISE_VERBOSE'] == 'yes'
    end
  end
end
