struct list *listAddBefore(struct list *element, int insertWhat, int insertBefore)
{
    element = listToFirst(element);

    while (element -> next)
    {
        if (element -> value == insertBefore)
        {
            struct list *temp = listCreateElement(insertWhat, element->prev, element);

            element -> prev -> next = temp;
            element -> prev = temp;

            return temp;
        }
        element = element -> next;
    }

    return NULL;
}
struct list *listToFirst(struct list *element)
{
    while (element -> prev)
        element = element -> prev;

    return element;
}


struct list *listCreateElement(int value, struct list *prev, struct list *next)
{
    struct list *element = (struct list *) malloc(sizeof(struct list));

element -> value = value;
element -> prev = prev;
element -> next = next;
return element;
}
