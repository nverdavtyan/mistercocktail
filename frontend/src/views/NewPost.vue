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


<span v-for="item in ingredients" >
<input type="checkbox"> <span class="checkbox-label" /> {{item.name}} <br>
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
      ingredients:[],
      name:'',

    

    };

  },
  methods: {
      onCreatePost(){
        
    axios
      .post('http://localhost:3000/ingredients',
      {name: this.name }
      )
      .then((response) => {
          console.log(response)
   
      })   
      }
  
  },
    mounted(){         
    const URL = 'http://localhost:3000/ingredients'
    axios
      .get(URL)
      .then((response) => {
        this.ingredients = response.data
        console.log(this.ingredients)
      })
  },
   

}


</script>