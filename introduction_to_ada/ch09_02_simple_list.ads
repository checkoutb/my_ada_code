
package Ch09_02_simple_list is
    type Node;    -- incomplete type declaration

    type Node_Acc is access Node;

    type Node is record 
        Content: Natural;
        Prev, Next: Node_Acc;
    end record;
end Ch09_02_simple_list;