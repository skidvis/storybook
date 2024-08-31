<template>
    <div>
        <ul class="flex flex-col md:flex-row p-4 gap-2">
            <li v-for="book in books" :key="book.id" class="md:max-w-md max-w-full flex ">
                <div class="grid grid-cols-3 gap-4 border rounded-md border-slate-800 p-4 bg-indigo-500/75 text-white self-auto max-h-lvh">
                    <div class="col-span-2">
                        <ul class="flex flex-col h-full min-h-full">
                            <li class="font-bold">{{ book.title }}</li>
                            <li class="mt-2 grow">{{ book.description[0] }}</li>
                            <li class="m-auto"><a :href="'/books/' + book.slug" class="p-3 mt-4 min-w-36 font-bold bg-white rounded-md text-black text-center flex place-content-evenly">Read Now <Play /></a></li>
                        </ul>
                    </div>                    
                    <div>
                        <a :href="'/books/' + book.slug"><img :src="'/' + book.root + '/' + book.cover" :key="book.id" alt="" class="w-48 shadow-md shadow-black rotate-6"></a>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</template>

<script setup>
    import { Play } from 'lucide-vue-next';
    import { getBooks } from '../../data/books/books';
    const books = getBooks();
</script>

<style>
    
</style>