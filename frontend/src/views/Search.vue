
<template>

    <div class="d-flex m-3 justify-content-center" style="width: 20rem;" role="search">
          <input class="form-control"  v-model="query" @keyup="getSearchResults(query)" type="search" placeholder="Recherche" aria-label="Search">
         </div>

        <div v-if="query !=='' ">
<ul class="list-group">
   <li v-for="item in posts" class="" :key="item.id">
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
  getSearchResults(query){
        console.log(query)
    axios.get(`http://localhost:3000/search?q=${query}`)
      .then((res) => {
        this.posts = res.data
        console.log(this.posts)
        
      })
  }
}

}


</script>

