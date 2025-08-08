#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char* minWindow(char* s, char* t) {
    int sLen = strlen(s), tLen = strlen(t);
    int charCount[128] = {0};
    int required[128] = {0};
    int count = 0, minLen = sLen + 1, start = 0, minStart = 0;

    for (int i = 0; i < tLen; i++) {
        required[t[i]]++;
        count++;
    }

    int left = 0, right = 0;

    while (right < sLen) {
        if (required[s[right]] > 0) {
            charCount[s[right]]++;

            if (charCount[s[right]] <= required[s[right]]) count--;
        }

        right++;

        while (count == 0) {
            if (right - left < minLen) {
                minLen = right - left;
                minStart = left;
            }

            if (required[s[left]] > 0) {
                charCount[s[left]]--;

                if (charCount[s[left]] < required[s[left]]) count++;
            }

            left++;
        }
    }

    if (minLen == sLen + 1) return "";

    char* result = (char*)malloc((minLen + 1) * sizeof(char));

    strncpy(result, s + minStart, minLen);
    result[minLen] = '\0';

    return result;
}

const int main() {

    static char s[] = "ADOBECODEBANC";
    static char t[] = "ABC";

    char* result = minWindow(s, t);

    printf("%s\n", result);

    free(result);

    return 0;

}
