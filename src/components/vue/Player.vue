<template>
    <div v-if="currentPage != null" class="flex justify-center items-center flex-col md:flex-row">
        <div>            
            <img :src="'/'+ meta.root + '/' + currentPage.file" :key="currentPage.file" alt="" class="m-auto">         
        </div>
        <div class="p-1 max-w-md">
            <ul>
                <li v-for="caption in currentPage.captions" :key="caption" class="p-1 m-2 border border-yellow-50 rounded-lg bg-yellow-100 font-medium">{{ caption }}</li>
            </ul>
        </div>
    </div>
    <ul class="flex justify-center items-center p-3 gap-3">
        <li v-for="choice in currentPage.choices" class="flex">
            <button @click="nextPage(choice.url)" class="border-2 p-1 m-auto bg-lime-700 hover:bg-lime-800 font-bold text-white rounded-md min-w-36">{{ choice.text }}</button>
        </li>
    </ul>
    <div class="m-3 p-3 grid grid-flow-col rounded-md bg-slate-300">
        <div class="font-bold text-center p-1 min-w-36">Good Endings Discovered: {{ goodEndingsFound }}/{{meta.goodEndings}}</div>
        <div class="font-bold text-center p-1 min-w-36">Bad Endings Discovered: {{ badEndingsFound }}/{{meta.badEndings}}</div>
    </div>    
</template>

<script setup>
    import {meta, data} from '../../data/skat1/info.js';
    import { ref } from 'vue';

    const images = ref([]);
    const currentPage = ref(null);
    const blank = {
        file: meta.cover,
        captions: meta.description,
        choices: [
            {
                text: 'Begin',
                url: 'a0'
            }
        ]
    }    
    let audioElement = null;
    let goodEndingsFound = 0;
    let badEndingsFound = 0;
    // countBadEndings();

    if(data) currentPage.value = blank;

    function nextPage(url){        
        if(url === 'winner') goodEndingsFound++;
        if(url === 'bad') badEndingsFound++;
        if(url === 'bad' || url === 'winner') url = 'a0';
        const result = data.find(item => item.id === url);
        currentPage.value = result;
        playAudio(result.id);
    }

    function playAudio(clip) {
        if(audioElement != null) audioElement.pause();
        audioElement = new Audio('/'+ meta.root + '/audio/' + clip + '.mp3');
        audioElement.load();   
        audioElement.play();    
    }

    function countBadEndings(){
        data.forEach(element => {
            // element.choices.forEach(choice => {
            //     if(choice.url === 'bad') meta.badEndings++;
            //     if(choice.url === 'winner') meta.goodEndings++;
            // })
            images.value.push('/' + meta.root + '/' + element.file);
        });
    }
</script>

<style>    
.v-enter-active,
.v-leave-active {
  transition: opacity 0.5s ease;
  position: absolute;
}

.v-enter-from,
.v-leave-to {
  opacity: 0;
}
</style>