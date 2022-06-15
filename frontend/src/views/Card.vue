<template>
     <div class="col-lg-3 col-xs-12">
       <article class="card cocktail h-100">
      <div class="card-body">
      <h4 class="card-title">{{ name}}</h4>
     <p class="card-text">{{ content}}</p>
      <router-link :to="{name:'postdetails', params: {id: id}}" class="btn btn-primary ">Details</router-link>
      </div>
  </article>
    </div>
  </template>

  <script>


export default{
    name: 'Card',
     props:{
         id: Number,
         name:String,
         content:String,
         ingredients:Array
     },

}

  </script>