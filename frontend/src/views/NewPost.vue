<template>
<div>
<form @submit.prevent="onCreatePost"> 
<div class="form-group">
  <label>Nom de Recettes</label>
  <input type="text" class="form-control" v-model="name"/>
</div>
<div class="form-group">
  <label>Description</label>
  <textarea type="text" class="form-control" v-model="content">  </textarea>
</div>

<div class="form-group">
  <label>Image</label>
  <input type="file" class="form-control" v-on:change="image_data" />  
</div>


<span v-for="item in ingredients_data" >
<input type="checkbox" v-model="ingredients"> 
<span class="checkbox-label" /> {{item.name}} <br>
</span>

<div class="mt-3">
<button type="submit" class="btn btn-primary"> Ajouter une cocktail</button>
</div>
</form>

</div>
</template>


<script>
import axios from 'axios'
export default{

  data () {
    return {
      ingredients_data:[],
      name:'',
      content:'',
      image_data:'',
      ingredients:[]
    

    };

  },
  methods: {
      onCreatePost(){
    axios
      .post('http://localhost:3000/posts',
      {name: this.name , content:this.content,image_data:this.image_data, ingredients:this.ingredients}
      )
      .then((response) => {
          console.log(response)
   
      })   
      },
  
  },
    mounted(){         
    const URL = 'http://localhost:3000/ingredients'
    axios
      .get(URL)
      .then((response) => {
        this.ingredients_data = response.data
        console.log(this.ingredients_data)
      })
  },
   

}


</script>