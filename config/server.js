module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  admin: {
    auth: {
      secret: env('ADMIN_JWT_SECRET', 'b19f8847a6327e59481f2c3a08a0958c'),
    },
  },
  jsonpath:env('JSON_PATH','../redcat/packages/web-static-spa/src/sections/'),
  frontend:env('JSON_PATH','../redcat')
});
