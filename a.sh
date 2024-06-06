#!/bin/bash

# intro 1
git commit;
git commit;

# intro 2
git branch bugFix;
git checkout bugFix;

# intro 3
git checkout -b bugFix;
git commit;
git checkout main;
git commit;
git merge bugFix;

# intro 4
git checkout -b bugFix;
git commit;
git checkout main;
git commit;
git rebase main bugFix;


# rampup 1
git checkout C4;

# rampup 2
git checkout bugFix^;

# rampup 3
git branch -f main C6;
git checkout HEAD^;
git branch -f bugFix HEAD^;

# rampup 4
git reset HEAD^;
git checkout pushed;
git revert pushed;

# move 1
git cherry-pick C3 C4 C7;

# move 2
git rebase -i HEAD~4;

# mixed 1
git checkout main;
git cherry-pick bugFix;

# mixed 2
git rebase -i HEAD~2;
git commit --amend;
git rebase -i HEAD~2;
git branch -f main;

# mixed 3
git checkout newImage;
git commit --amend;
git checkout main;
git cherry-pick newImage caption;

# mixed 4
git tag v0 side~2;
git tag v1 side~;
git checkout v1;

# mixed 5
git describe;
git commit;

# advanced 1
git rebase side another;
git rebase main bugFix;
git rebase bugFix another;
git branch -f main;

# advanced 2
git branch bugWork HEAD^^2^;

# advanced 3

git checkout one;
git cherry-pick main^ main~2 main~3;
git checkout two;
git cherry-pick main main^ main~2 main~3;
git branch -f three main~3;

# remote 1
git clone;

# remote 2
git commit;
git checkout o/main;
git commit;

# remote 3
git fetch;

# remote 4
git pull;

# remote 5
git clone;
git fakeTeamwork 2;
git commit;
git pull;

# remote 6
git commit;
git commit;
git push;

# remote 7
git clone;
git fakeTeamwork;
git commit;
git pull --rebase;
git push;

# remote 8
git branch -f main main^;
git checkout -b feature c2;
git push;


# remoteAdvanced 1
#git checkout main;
#git pull;
#git rebase main side1;
#git rebase side1 side2;
#git rebase side2 side3;
#git branch -f main;
#git checkout main;
#git push;

git fetch;
git rebase o/main side1;
git rebase side1 side2;
git rebase side2 side3;
git rebase side3 main;
git push;

# remoteAdvanced 2
#git fetch
#git checkout side1
#git merge o/main
#git merge side2
#git merge side3
#git branch -f main
#git checkout main
#git push

git checkout main;
git pull;
git merge side1;
git merge side2;
git merge side3;
git push;

# remoteAdvanced 3
git checkout -b side o/main;
git commit;
git pull --rebase;
git push;

# remoteAdvanced 4
git push origin main;
git push origin foo;

# remoteAdvanced 5
git push origin main^:foo;
git push origin foo:main;

# remoteAdvanced 6
git fetch origin c3:foo;
git fetch origin c6:main;
git checkout foo;
git merge main;

# remoteAdvanced 7
git push origin :foo;
git push origin :bar;

# remoteAdvanced 8
git pull origin c3:foo;
git pull origin c2:side;
