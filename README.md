# monitor-switch

Forked from: from https://github.com/MestreLion/scripts<br/>
Licence: GPL-3.0-or-later / GPLv3 or later. See <http://www.gnu.org/licenses/gpl.html><br/>
Copyright (C) 2012 Rodrigo Silva (MestreLion) <linux@rodrigosilva.com><br/>

Switch monitors using xrandr.

## Usage
<pre>
Version: 1.1 (ddmesh)
Usage: monitor-switch.sh [options]

Switch monitors using xrandr.

Options:
  -h|--help          - show this page.
  -v|--verbose       - print in terminal the full xrandr command executed.
  -d|--debug         - print debugging information on --list. Implies --verbose.

  -l|--list          - list connector and monitor names of connected outputs.
                       When --verbose, also list the configured monitors.
                       When --debug, also print the full unparsed output
                       of 'xrand --prop' and the contents of the config file.

  -a|--all           - enable all monitors.
  -e|--enable OUTPUT - enable monitor OUTPUT. Can be specified multiple times.
                       Monitors not enabled will be disabled.
  -s|--select OUTPUT - enable monitor OUTPUT, disable all others.
  -L|--left          - select leftmost monitor.  Alias for --select eDP-1
  -R|--right         - select rightmost monitor. Alias for --select DP-1-3
  -C|--center        - select center monitor.    Alias for --select DP-1-1
                       It actually just selects the second one, so this just makes
                       sense in a 3-monitor setup.

OUTPUT in --enable and --select can be either an output name, as given by --list,
or the number of its position on the list, 1 being the first output.

The left-to-right order of monitors can be specified in the configuration file:
/home/<user>/.config/monitor-switch.sh.conf

Copyright (C) 2012 Rodrigo Silva (MestreLion) <linux@rodrigosilva.com>
License: GPLv3 or later. See <http://www.gnu.org/licenses/gpl.html>
</pre>

**Changelog**:
- rename short options to remove doubles
- add version to script


