<footer>
    <div class="footer-container">
        <div class="container">
            <a class="twitter" href="https://twitter.com/parergonjournal">
                <div>
                    <img src="{$baseUrl}/plugins/themes/parergon/templates/images/twitter.png" alt="">
                </div>
                Follow @ParergonJournal on Twitter
            </a>

            <p>Online ISSN: {$currentContext->getData('onlineIssn')|escape}</p>
            <p>Print ISSN: {$currentContext->getData('printIssn')|escape}</p>
        </div>
    </div>
    <div class="footer-globe">
        <img src="{$baseUrl}/plugins/themes/parergon/templates/images/globe_footer.png" />
    </div>
    <div class="footer-strap">
        <div class="container">
            <p>Theme by <a href="http://ladyofcode.com">Tabs</a></p>
        </div>
    </div>
</footer>