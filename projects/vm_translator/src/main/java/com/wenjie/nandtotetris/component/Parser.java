package com.wenjie.nandtotetris.component;

import cn.hutool.core.io.FileUtil;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * @className: Parser
 * @description:
 * 1. Handles the parsing of a single .vm file
 * 2. Reads a VM command, parses the command into its lexical components,
 * and provides convenient access to these components
 * 3. Ignores white space and commentsT
 * @author: Wenjie FU
 * @date: 19/05/2023
 **/
public class Parser {
    private BufferedReader bufferedReader;

    public Parser(String filePath) {
        try {
          bufferedReader = new BufferedReader(new FileReader(Paths.get(filePath).toFile()));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    /**
     * Check if there are more lines in the input
     *
     * @return
     */
    public boolean hasMoreLines() {
        // TODO :
        return true;
    }

    /**
     * 1. Reads the next command from the input and makes it the current command.
     * 2. This method should be called only if hasMoreLines is true.
     * 3. Initially there is no current command.
     */
    public void advance() {
        // TODO :
    }

    /**
     * Returns a constant representing the type of the current command.
     * If the current command is an arithmetic-logical command, returns C_ARITHMETIC.
     *
     * @return
     */
    public CommandType commandType() {
        // TODO :
        return null;
    }

    /**
     * 1. Returns the first argument of the current command.
     * 2. In the case of C_ARITHMETIC, the command itself (add, sub, etc.) is returned.
     * 3. Should not be called if the current command is C_RETURN.
     * @return
     */
    public String arg1() {
        // TODO:
        return null;
    }

    /**
     * 1. Returns the second argument of the current command.
     * 2. Should be called only if the current command is C_PUSH, C_POP, C_FUNCTION, Or C_CALL.
     * @return
     */
    public int arg2() {
        // TODO:
        return 0;
    }
}
