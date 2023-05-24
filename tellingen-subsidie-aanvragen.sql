SELECT 
    (SELECT COUNT(*) FROM test.Aanvrager) AS aantalAanvragers,
    (SELECT COUNT(*) FROM test.Aanvraag) AS aantalAanvragen,
    (SELECT COUNT(*) FROM test.Regeling) AS aantalRegelingen,
    (SELECT COUNT(*) FROM test.RegelingType) AS aantalRegelingTypes,
    (SELECT COUNT(*) FROM test.Status) AS aantalStatussen;
