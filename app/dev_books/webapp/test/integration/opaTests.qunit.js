sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'devbooks/test/integration/FirstJourney',
		'devbooks/test/integration/pages/BookList',
		'devbooks/test/integration/pages/BookObjectPage'
    ],
    function(JourneyRunner, opaJourney, BookList, BookObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('devbooks') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBookList: BookList,
					onTheBookObjectPage: BookObjectPage
                }
            },
            opaJourney.run
        );
    }
);