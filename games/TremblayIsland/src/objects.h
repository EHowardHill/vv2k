#include <sstream>

/*

Maple   0
Enoki   1
Aaron   2
Scout   3
Vee     4
Eleanor 5
Diana   6
Guy     7

*/

// Generic classes
class line {
    public:
        bool transition;
        bool left;
        int img = 0;
        char text[192] = {0};
};

// Function to calculate the smallest multiple
int roundDown(int n) {
    return n >> 5;
}

int roundUp(int n) 
{
    return roundDown(n + 31);
}

int countDigit(int n)
{
    if (n/10 == 0)
        return 1;
    return 1 + countDigit(n / 10);
}

class save_struct {
    public:
        int last_char_id = 0;
        int checkpoint = 0;
        char island_name[16] = {0};
        int spawn_x = 0;
        int spawn_y = 0;
        int world_index = 0;
        int xp = 0;

        int hat_x = 0;
        int hat_y = 0;
        int hat_world = 0;
        int hat_char = 0;

        int ball_x = 0;
        int ball_y = 0;
        int ball_world = 0;
        int ball_char = 0;
};

class save_all_struct {
    public:
        save_struct so[3];
};

void deep_copy(std::vector<int> &a, std::vector<int> &b) {
    b.clear();
    for (auto &c : a) {
        b.push_back(c);
    }
}

template<typename C, typename T>
bool contains(C&& c, T e) { 
    return std::find(std::begin(c), std::end(c), e) != std::end(c);
};