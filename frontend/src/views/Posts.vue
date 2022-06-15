<template>
<div class="container">
        <div class="d-flex m-5 justify-content-center" style="width: 25rem;" role="search">
          <input class="form-control  " v-model="searchQuery" type="search" placeholder="Recherche" aria-label="Search">
        </div>
   <div class="row">
        <Card :key="post.id" v-for="post in searchedResult" :name="post.name" :content="post.content" :id="post.id"  />

  
  
    </div>
      </div>
</template>

<script>
import axios from 'axios'
import Card from './Card.vue'
export default{
  data () {
    return {
      posts:[],
      searchQuery: ''
    }
  },
   components: {
    Card
  },
  created () {
    const URL = 'http://localhost:3000/posts'
    axios
      .get(URL)
      .then((response) => {
        this.posts = response.data
        console.log(this.posts)
      })
  },
  computed:{
    searchedResult(){
      const value = this.searchQuery.toLowerCase();
           console.log(value)
      let mySuperArray = this.posts.filter(function(myFilter){
        return myFilter.name.toLowerCase().indexOf(value) > -1
      })
      if(mySuperArray.length > 0){
        return mySuperArray
      }else{
        return this.posts
   
      }
          }

  }
 

}


</script>
