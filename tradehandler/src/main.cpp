#include "Trade.h"
#include "string.h"

int main(int argc, char *argv[])
{
    if (argc > 1)
    {
        if (strcmp(argv[1], "-c") == 0 || strcmp(argv[1], "-C") == 0)
        {
            return CTrade::GetInstance()->ClearDb();
        }
    }
    CTrade::GetInstance()->Start();
    return 0;
}