(declare-fun x1_ack!4179 () (_ BitVec 64))
(declare-fun x0_ack!4187 () (_ BitVec 64))
(declare-fun y0_ack!4180 () (_ BitVec 64))
(declare-fun x_ack!4185 () (_ BitVec 64))
(declare-fun y_ack!4186 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!4183 () (_ BitVec 64))
(declare-fun z1_ack!4182 () (_ BitVec 64))
(declare-fun z3_ack!4184 () (_ BitVec 64))
(declare-fun z0_ack!4181 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4187) ((_ to_fp 11 53) x1_ack!4179))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4180) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4185) ((_ to_fp 11 53) x0_ack!4187)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4186) ((_ to_fp 11 53) y0_ack!4180))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!4186) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4179)
                       ((_ to_fp 11 53) x0_ack!4187))
               ((_ to_fp 11 53) x0_ack!4187))
       ((_ to_fp 11 53) x1_ack!4179)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4179)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4179)
                       ((_ to_fp 11 53) x0_ack!4187)))
       ((_ to_fp 11 53) x0_ack!4187)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4185)
                           ((_ to_fp 11 53) x0_ack!4187))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4179)
                           ((_ to_fp 11 53) x0_ack!4187)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4185)
                           ((_ to_fp 11 53) x0_ack!4187))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4179)
                           ((_ to_fp 11 53) x0_ack!4187)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4185)
                           ((_ to_fp 11 53) x0_ack!4187))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4179)
                           ((_ to_fp 11 53) x0_ack!4187))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4186)
                           ((_ to_fp 11 53) y0_ack!4180))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4180)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!4181)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!4184)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!4182))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven a!3 a!4) a!5)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z2_ack!4183))))))

(check-sat)
(exit)
