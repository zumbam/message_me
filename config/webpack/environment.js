const {
  environment
} = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
  })
)

const CopyPlugin = require('copy-webpack-plugin');
// This plugin works only in the javascript area this is why the public output
// is relativ to the public pack folder
  environment.plugins.prepend('copy-webpack-plugin',
    new CopyPlugin([{
        from: 'node_modules/semantic-ui-css/themes/default/assets/fonts/icons.woff',
        to: '../assets/themes/default/assets/fonts/icons.woff'
      },
      {
        from: 'node_modules/semantic-ui-css/themes/default/assets/fonts/icons.woff2',
        to: '../assets/themes/default/assets/fonts/icons.woff2'
      },
      {
        from: 'node_modules/semantic-ui-css/themes/default/assets/fonts/icons.ttf',
        to: '../assets/themes/default/assets/fonts/icons.ttf'
      },
    ]),
)
module.exports = environment
