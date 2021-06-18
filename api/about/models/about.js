'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#lifecycle-hooks)
 * to customize this model
 */

var getData = async function(modelName,jsonFolder) {
  let items = await  strapi.query(modelName).find({ published_at_gt: 0 ,_sort: 'id:asc'});
  //console.log(items);
  for(let item of items)
  {
    delete item.id;
    delete item.created_by;
    delete item.updated_by;
    delete item.published_at;
    delete item.created_at;
    delete item.updated_at;
  }
  console.log(items);

  // write JSON string to a file
  const filepath=strapi.config.get('server.jsonpath', '') +jsonFolder+'/_data.json';
  const frontendPath=strapi.config.get('server.frontend', '');
  const jsonstr = JSON.stringify(items);
  const fs = require('fs');
  fs.writeFile(filepath, jsonstr, (err) => {
    if (err) {
      throw err;
    }
    console.log("JSON data is saved to "+filepath);
  });


  // RUN A BUiLD TO FRONTEND

  const { exec } = require("child_process");

  exec("cd "+ frontendPath + " & yarn install", (error, stdout, stderr) => {
    if (error) {
      console.log(`error: ${error.message}`);
      return;
    }
    if (stderr) {
      console.log(`stderr: ${stderr}`);
      return;
    }
    console.log(`stdout: ${stdout}`);
  });

}

module.exports = {
  lifecycles: {
    async afterUpdate(data)
    {
      getData('about','About');
    },
    async afterInsert(data)
    {
      getData('about','About');
    },
    async afterDelete(data)
    {
      getData('about','About');
    },
  },
};
