{include file="frontend/components/header.tpl" pageTitle="about.aboutContext"}

<div class="home-globe-container">
    <div class="home-globe">
        <img src="{$baseUrl}/plugins/themes/parergon/templates/images/globe_home.png" />
    </div>
</div>

<div class="wrapper">
    <div class="container">
        <section class="header-wrapper">
            <div class="header-container">
                <h1>Parergon {$headerImage}</h1>
                <p><em>Parergon</em> is the journal of ANZAMEMS, the Australian and New Zealand Association for
                    Medieval and
                    Early
                    Modern Studies. We publish articles on all aspects of medieval and early modern studies.
                </p>
                <a href="https://muse.jhu.edu/journal/309">View current issue</a>
                <a href="https://muse.jhu.edu/issue/19344">View sample issue</a>
                
                <a href="https://parergon.org/index.php/parergon/about/submissions">
                    <button class="cta">Submit article</button>
                </a>
            </div>
            <img class="header-image" src="{$baseUrl}/plugins/themes/parergon/templates/images/header_image.jpg" alt="">
        </section>
    </div>
</div>

{include file="frontend/components/footer.tpl"}