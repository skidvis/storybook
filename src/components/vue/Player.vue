<template>
    <div v-if="currentPage != null" class="flex justify-center items-center flex-col md:flex-row">
        <div class="min-w-min">
            <img :src="'/storybook/'+ meta.root + '/' + currentPage.file" alt="" class="m-auto">
        </div>
        <div class="p-1 max-w-md">
            <ul>
                <li v-for="caption in currentPage.captions" class="p-1 m-2 border border-yellow-50 rounded-lg bg-yellow-100 font-medium">{{ caption }}</li>
            </ul>
        </div>
    </div>
    <ul class="flex justify-center items-center p-3 gap-3">
        <li v-for="choice in currentPage.choices" class="flex">
            <button @click="nextPage(choice.url)" class="border p-1 border-solid m-auto bg-lime-700 hover:bg-lime-800 font-bold text-white rounded-sm">{{ choice.text }}</button>
        </li>
    </ul>
    <div class="flex justify-evenly items-center p-3 gap-3">
        <div class="font-bold text-center">Good Endings Discovered: {{ goodEndingsFound }}/{{meta.goodEndings}}</div>
        <div class="font-bold text-center">Bad Endings Discovered: {{ badEndingsFound }}/{{meta.badEndings}}</div>
    </div>
</template>

<script setup>
    import {meta, data} from '../../data/skat1/info.js';
    import { ref } from 'vue';

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
    //countBadEndings();

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
            element.choices.forEach(choice => {
                if(choice.url === 'bad') meta.badEndings++;
                if(choice.url === 'winner') meta.goodEndings++;
            })
        });
    }
</script>

<style>    
</style>