package com.group4.validation;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.ElementType;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

@Documented
@Target({ ElementType.METHOD, ElementType.FIELD })
@Constraint(validatedBy = UserUniquePhoneValidator.class)
@Retention(RUNTIME)
public @interface UniquePhone {
	String message();

	Class<?>[] groups() default {};

	Class<? extends Payload>[] payload() default {};
}
