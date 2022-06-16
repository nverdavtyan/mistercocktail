<script setup>
import { RouterLink, RouterView } from 'vue-router'
</script>

<template>
 <header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">

      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
    
          <li class="nav-item">
          <router-link :to="{name:'posts'}" class="nav-link "> Cocktails  </router-link>
          </li>
          <li class="nav-item">
           <router-link :to="{name:'newpost'}" class="nav-link "> Ajouter un cocktail  </router-link>
          </li>
        </ul> 
      </div>
    </div>
  </nav>
</header>


  <RouterView />
  <Posts/>
</template>

<style>
@import '@/assets/base.css';

#app {
  max-width: 1280px;
  margin: 0 auto;
  padding: 2rem;

  font-weight: normal;
}



a,
.green {
  text-decoration: none;
  color: hsla(160, 100%, 37%, 1);
  transition: 0.4s;
}

@media (hover: hover) {
  .nav-item:hover {
    background-color: hsla(160, 100%, 37%, 0.2);
  }
}



nav a.router-link-exact-active {
  color: var(--color-text);
}

nav a.router-link-exact-active:hover {
  background-color: transparent;
}

nav a {
  display: inline-block;
  padding: 0 1rem;
  border-left: 1px solid var(--color-border);
}

nav a:first-of-type {
  border: 0;
}

@media (min-width: 1024px) {
  body {
    display: flex;
    place-items: center;
  }

}
</style>
