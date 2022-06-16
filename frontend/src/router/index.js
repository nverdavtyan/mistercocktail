import { createRouter, createWebHistory } from 'vue-router'
import Posts from '../views/Posts.vue'
import PostDetails from '../views/PostDetails.vue'
import NewPost from '../views/NewPost.vue'

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
    {
      path: '/post/new',
      name: 'newpost',
      component: NewPost,
      props:true
    },
  ]
})

export default router
