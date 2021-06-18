var getData = async function(modelName) {
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
}

module.exports = {
  lifecycles: {
    async afterUpdate(data)
    {
      getData('testimonial');
    },
    async afterInsert(data)
    {
      getData('testimonial');
    },
    async afterDelete(data)
    {
      getData('testimonial');
    },
  },
};
