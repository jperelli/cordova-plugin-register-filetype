# cordova-plugin-register-filetype

Register a filetype to be opened with your app when clicking on the file.

Plugin only working for iOS right now. This is extremely useful for iOS apps because they cannot open files outside their sandbox.

## Installation

    cordova plugin add https://github.com/jperelli/cordova-plugin-register-filetype.git --variable EXTENSION=<my-file-extension> --variable MIMETYPE=application/x-my-mimetype

## Usage

Define a window.handleOpenURL(url) function to react to the file opening. This function will be called when your app is opened from a file being open.

    // insert this script in index.html
    <script>
      function handleOpenURL(url) {

        // url will be something like "file:///path/to/file.extension"
        console.log(url);

        setTimeout(function() {
          // use timeout to avoid problems when using other plugins here (workaround for a cordova issue, see https://github.com/EddyVerbruggen/Custom-URL-scheme/issues/93)
          // you can read the file here using the cordova-plugin-file
        }, 0);

      }
    </script>

## Future plans

We are working to

 - Add android support
 - Remove the need of setTimeout workaround
 - Upload the plugin to npm

## Contributors

 - Julian Perelli
 - Mauricio Pérsico

## License

GNU GPL v3
