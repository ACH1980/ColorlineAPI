# ColorlineAPI

Scripts and Docs for the colorline API ( from https://www.colorline-cargo.com )

## Scripts

### `downloadConn.sh`

#### Requirements

- Bash >= 4.0
- date (tested with GNU coreutils 8.30, but may also work with older versions)

### Description

Script to download all connections on a route between two dates (use same date for one day).

**Caution**: Outputs one JSON per day into the current working directory! May spam your Harddisk!
