struct test;

struct test* test_create(void);

void test_destory(struct test*);

void test_reset(struct test*);

void test_set_name(struct test* t, char* name);

void test_set_address(struct test*, char*);

void test_display(const struct test*);
