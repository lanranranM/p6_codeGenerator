import java.util.*;

/**
 * The Symb class defines a symbol-table entry. Each Symb contains a type (a
 * Type).
 */
public class Symb {
    private Type type;
    private int offset;
    private boolean global;
    public static boolean statusGlobal = true;

    public Symb(Type type) {
        this.type = type;
        this.global = statusGlobal;
    }

    public Type getType() {
        return type;
    }

    public String toString() {
        return type.toString();
    }

    // melody
    public int getOffset() {
        return offset;
    }

    public void setOffset(int offset) { // 1 if global, <=0 for locals based on document
        this.offset = offset;
    }

    static boolean isStatusGlobal() {
        return statusGlobal;
    }

    static void setStatusGlobal(boolean a) { // set false when entering a func/struct, set true when exit a func
        statusGlobal = a;
    }

    public boolean isGlobal() {
        return this.global;
    }
    // melody
}

/**
 * The FnSymb class is a subclass of the Symb class just for functions. The
 * returnType field holds the return type and there are fields to hold
 * information about the parameters.
 */
class FnSymb extends Symb {
    // new fields
    private Type returnType;
    private int numParams;
    private List<Type> paramTypes;
    private List<Symb> paramSyms;
    private int localSize;

    public FnSymb(Type type, int numparams) {
        super(new FnType());
        returnType = type;
        numParams = numparams;
        localSize = 0;
    }

    public void addFormals(List<Type> L) {
        paramTypes = L;
    }

    public Type getReturnType() {
        return returnType;
    }

    public int getNumParams() {
        return numParams;
    }

    public List<Type> getParamTypes() {
        return paramTypes;
    }

    public String toString() {
        // make list of formals
        String str = "";
        boolean notfirst = false;
        for (Type type : paramTypes) {
            if (notfirst)
                str += ",";
            else
                notfirst = true;
            str += type.toString();
        }

        str += "->" + returnType.toString();
        return str;
    }

    public int getLocalSize() {
        return localSize;
    }

    public void setLocalSize(int size) {
        this.localSize = size;
    }

    public void setParamSyms(List<Symb> L) {
        this.paramSyms = L;
    }

    public List<Symb> getParamSyms() {
        return paramSyms;
    }

    // melody
}

/**
 * The StructSymb class is a subclass of the Symb class just for variables
 * declared to be a struct type. Each StructSymb contains a symbol table to hold
 * information about its fields.
 */
class StructSymb extends Symb {
    // new fields
    private IdNode structType; // name of the struct type

    public StructSymb(IdNode id) {
        super(new StructType(id));
        structType = id;
    }

    public IdNode getStructType() {
        return structType;
    }
}

/**
 * The StructDefSymb class is a subclass of the Symb class just for the
 * definition of a struct type. Each StructDefSymb contains a symbol table to
 * hold information about its fields.
 */
class StructDefSymb extends Symb {
    // new fields
    private SymTable symTab;

    public StructDefSymb(SymTable table) {
        super(new StructDefType());
        symTab = table;
    }

    public SymTable getSymTable() {
        return symTab;
    }
}
