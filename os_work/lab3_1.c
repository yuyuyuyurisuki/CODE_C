#include <ctype.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define ll long long
#define BLOCK_SIZE 128
#define PAGE_SIZE 128

typedef struct page_table {
    size_t page_number;
    bool sign;
    size_t block_number;
    size_t position;
} PageTable;

PageTable cur_page_tables[PAGE_SIZE];

size_t cur_page_tables_length;

size_t get_absolute_address(size_t block_number, size_t lun) {
    return block_number * BLOCK_SIZE + lun;
}

PageTable* get_page_table(size_t page_number) {
    for(size_t i = 0; i < cur_page_tables_length; i++)
        if(cur_page_tables[i].page_number == page_number) return &cur_page_tables[i];
    return NULL;
}

typedef struct operation {

    size_t page_number;
    size_t lun;
} Operation;

void run(Operation* operation) {
    PageTable* page_table = get_page_table(operation->page_number);
    if(page_table) {
        if(page_table->sign) {
            printf("%zu\n", get_absolute_address(page_table->block_number, operation->lun));
        } else
            puts("*");
    }
}

void init_page_tables() {
    PageTable p0 = { 0, 1, 5, 11 };
    PageTable p1 = { 1, 1, 8, 12 };
    PageTable p2 = { 2, 1, 9, 13 };
    PageTable p3 = { 3, 1, 1, 21 };
    PageTable p4 = { 4, 0, 0, 22 };
    PageTable p5 = { 5, 0, 0, 23 };
    PageTable p6 = { 6, 0, 0, 121 };

    cur_page_tables[0] = p0;
    cur_page_tables[1] = p1;
    cur_page_tables[2] = p2;
    cur_page_tables[3] = p3;
    cur_page_tables[4] = p4;
    cur_page_tables[5] = p5;
    cur_page_tables[6] = p6;
    cur_page_tables_length = 7;
}

int main(int argc, char* argv[]) {
    freopen("/home/sirius/CODE_C/input.txt", "r", stdin);
    freopen("/home/sirius/CODE_C/output.txt", "w", stdout);
    char name[10];
    size_t page_number, lun;
    Operation operation;
    init_page_tables();
    printf("操作\t页号\t单元号\t绝对地址\n");
    while(~scanf("%s%zd%zd", name, &page_number, &lun)) {
        printf("%s\t\t%zu\t\t%03zu\t\t", name, page_number, lun);
        operation.page_number = page_number, operation.lun = lun;
        run(&operation);
    }
    return 0;
}