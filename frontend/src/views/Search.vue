
<template>

    <div class="d-flex m-3 justify-content-center" style="width: 20rem;" role="search">
          <input class="form-control  "  v-model="query" v-on:input="getSearchResults" type="search" placeholder="Recherche" aria-label="Search">
         </div>

        <div v-if="query !=='' ">
<ul class="list-group">
   <li v-for="item in posts" class="">
         <router-link :to="{name:'postdetails', params: {id: item.id}}" class="nav-link">{{item.name}}</router-link>
          
        </li>
        </ul>
        </div>

</template>








<script>
import axios from 'axios'

export default{
  data () {
    return { 
  posts:[ ],
       query: '',
       error:'error'
    }
  },
 
methods:{
  getSearchResults(){
        console.log(this.query)
    axios.get(`http://localhost:3000/search?q=${this.query}`)
      .then((res) => {
        this.posts = res.data
        console.log(this.posts)
        
      })
  }
}

}


</script>

