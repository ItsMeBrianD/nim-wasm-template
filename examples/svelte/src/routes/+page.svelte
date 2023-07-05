<script>
    import {load} from "nim-wasm-template";
    let num = 0;
</script>

<h1>Welcome to SvelteKit</h1>
<p>Visit <a href="https://kit.svelte.dev">kit.svelte.dev</a> to read the documentation</p>

<input type="number" bind:value={num}/>

{#await load()}
    Hello
{:then e} 
    {e.exports.fibonacci(num)}
{/await}