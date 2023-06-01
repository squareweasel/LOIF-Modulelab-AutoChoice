VAR skip=1
VAR c1cnt=0
->start

==start==
starting story
#cc1 
+[continue]
    continuing story 1
->cc1
+[stop]
    ->END

==cc1==
#cc2 
+[continue]
    continuing story 2
->cc2
+[stop]
    ->END
==cc2==
#cc3 
+[continue]
    continuing story 3
->cc3
+[stop]
    ->END
==cc3==
#cc4 
+[continue]
    continuing story 4
->cc4
+[stop]
    ->END
==cc4==
#cc5
+[continue]
    continuing story 5
    ->endChoice
+[stop]
    ->END
    
==endChoice==
 + (c1) Go back.
    ->start
 + (c3) Restart toggle skip.
    {skip==1:
    ~skip=0
    -else:
    ~skip=1
    }

        ->start
 + (c2) Stop.
    ->END

