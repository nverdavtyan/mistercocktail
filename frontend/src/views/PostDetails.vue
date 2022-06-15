<template>
  <router-link :to="{name:'posts'}" class="btn btn-primary">back to list</router-link>
      <article class="card cocktail m-4">
               <div class="card-body">
<h1>{{ post.name}}</h1>
<p>{{ post.content }}</p>

<span><b>Ingredients:</b></span>
<div :key="index" v-for="(ingredient, index) in post.ingredients" >
<p> {{ ingredient.name }}</p>
</div>

  </div>

     </article>
</template>


<script>
import axios from 'axios'
export default{

  data () {
      
    return {
      post:'',
      id: ''
    }
    
  },
   created() {
    this.id =this.$route.params.id
         
    const URL = 'http://localhost:3000/posts/'+this.id
    axios
      .get(URL)
      .then((response) => {
        this.post = response.data
        console.log(this.post)
      })
  },
 

}


</script>