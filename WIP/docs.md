# anti-depresso
## the inner workings
### the fist setup
When first starting up the app, the user has to answer a set of questions, which are based on the the [Patient Health Questionnaire (PHQ-9)](https://en.wikipedia.org/wiki/Patient_Health_Questionnaire) and the [General Anxiety Disorder-7 GAD-7](https://en.wikipedia.org/wiki/GAD-7) questionaire. Additionally the user is asked to enter some information regarding their habits, favors and other things that might be relevant for the later suggestion process. 

#### recurring questionaire
The questionaires are repeated at regular intervals to track the users progress. The questions are sprinkled in over the course of one week to spread them out and get a better picture of the users progress.

#### alternative questionaires
Alternatively the [PHQ-15](https://en.wikipedia.org/wiki/Patient_Health_Questionnaire) and [GAD-11](https://en.wikipedia.org/wiki/GAD-7) questionaires could be used. These questionaires are more detailed and might be useful for tracking over a longer period of time.

Even more sophisticated questionaires like the [Beck Depression Inventory (BDI)](https://en.wikipedia.org/wiki/Beck_Depression_Inventory) or [Beck Anxiety Inventory (BAI)](https://en.wikipedia.org/wiki/Beck_Anxiety_Inventory) could be used tfor even longer periods.

#### possible range of answers
The possible range of answers for the questions from PHQ-9 and GAD-7 is 0-3, PHQ-15 and GAD-11 is 0-5 ands BDI and BAI is 0-4. These could be extended to a common base of 0-5, which would allow for a more detailed analysis of the users answers and the use of all three questionaires for a combined analysis, if the questions are recurring at certain intervals.

### main mechanics
#### the current state of mind
Every time the user opens the app they are asked to rate their current state of mind. This rating can be either a boolean (good/bad), a scale from 0-5 or part of the aforementioned questionaires. 

Alternatively a [PHQ-2](https://de.wikipedia.org/wiki/PHQ-2) and [GAD-2](https://de.wikipedia.org/wiki/GAD-2) alike questionaire could be used to get quick and easy feedback on the user's state.

The gathered information can then be factored in for any suggestions the app gives the user.

#### the category system
In order to get a better understanding of the user's issue, the user has to select a major category like:
- anxiety
- stress
- depression
- intrusive thoughts
- etc.

to further narrow down the correct decision path, the user is then asked to select a subcategory. In case of depression, a subcategory could be:
- sadness
- loneliness
- hopelessness
- self-esteem
- etc.

#### the decision making process
Armed with these informations the app can now select a proper decision tree for the user to play through. Each subcategory has multiple sets of questions, that aim to help the user to find the best decision for their current state of mind. These sets of questions will be called **decision trees** from now on.

The user can play through a decision tree, and the app will give them suggestions on how to proceed

> "depression: loneliness" -> (fetched decision tree) "activity with friends"

Each decision tree has a associated optimal personality type, that will be used to select the best fitting decision tree for the user

> "activity with friends" -> "meet at a bar" (if user is extraverted) or "go to a movie" (if user is introverted)

A decision tree can also have multiple paths, that branch of at every level. These paths will be called **decision paths** from now on.

> the user might not like the decision path "go to a movie" and instead selects the decision path "call a friend"

The user can also reject a decision tree, if it does not fit their needs. In this case the app will select another decision tree, that might be a better fit for the user.

> "depression: loneliness" -> (fethed decision tree) "activity with friends" -> "reject" -> (fetched decision tree) "go to for a walk"

Each subcategory has multiple decision trees, which will be choosen at random to give the user a different experience each time they use the app. This also also helps the app from getting stale and gives a look inside the thought process of the user, which could be used to improve the suggestions the app gives the user in the future.

#### the solution
If the user has been guided through a decision tree, the app has hopefully helped the user to find a solution for their needs. At the end of the decision tree the user is asked to rate the solution they found -> this information can be used to improve the suggestions of the app in the future.

### additional mechanics
#### score system
Aside from the personal perception, the app also takes into account the evaluation of the user regarding the proposed solution by the app as well as the overall choices the user made. The optimum for the user is a value of 0, which means that the user has no problems and is in a "mental balance".

However, their daily score **can fluctuate between -X and +X** depending on the severity of the problem and the user's choices. The score system is used to give the user a better understanding of themselves and of how their choices affect them.

The overall scores could be displayed as daily change in a graph, where the x-axis is the time and the y-axis is the score before and after using the app. The average of the before and after score would be the average of that day. The closer the average is to 0, the better the user has done that day. The maximum score for a day is 100 points, which means that the users mind is in a "perfect" state of balance. The score is reset every day, so the user can start fresh and try to get a better score the next day.

If the user doesn't use the app for a day no score will be given and the entire day will be skipped in the overall personal all-time score.

However, if the user starts the day with a very good self perception, the daily score will be set to dead 0 resulting in a daily maximum score of 100.

## UI
The app should have a very basic and simple UX, so that the app is easy to understand and navigate. The app should be as unobtrusive as possible, so the user can use it without getting distracted by the app itself.

A [simple first prototype](https://design.penpot.app/#/view/76981dd7-ec3b-802f-8001-902752e26aa1?page-id=76981dd7-ec3b-802f-8001-902752e26aa2&section=interactions&index=0&share-id=76981dd7-ec3b-802f-8001-93124dab8dd3) has been created to get a better understanding of the app's UI in conjuction with the needed mechanics.