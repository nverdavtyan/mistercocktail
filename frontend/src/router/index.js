import { createRouter, createWebHistory } from 'vue-router'
import Posts from '../views/Posts.vue'
import PostDetails from '../views/PostDetails.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'posts',
      component: Posts
    },
    {
      path: '/post/:id',
      name: 'postdetails',
      component: PostDetails,
      props:true
    },
  ]
})

export default router
