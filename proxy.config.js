const config = {
  "/api/": {
    "target" :"http://" + process.env.API_URL_IP + ":8080",
    "secure": false,
    "logLevel": "debug",
  },
};
module.exports = config;
