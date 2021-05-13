'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#lifecycle-hooks)
 * to customize this model
 */

module.exports = {
  lifecycles: {
    async afterUpdate(data)
    {
      const modelName='about';
      let items = await  strapi.query(modelName).find({ published_at_gt: 0 ,_sort: 'id:asc'});
      console.log(items);
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
      //Save the json to the frontend/sections/<modelName> in _data.json file
    },
  },
};