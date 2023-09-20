(declare-fun x1_ack!3150 () (_ BitVec 64))
(declare-fun x0_ack!3158 () (_ BitVec 64))
(declare-fun y0_ack!3151 () (_ BitVec 64))
(declare-fun x_ack!3156 () (_ BitVec 64))
(declare-fun y_ack!3157 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!3154 () (_ BitVec 64))
(declare-fun z1_ack!3153 () (_ BitVec 64))
(declare-fun z3_ack!3155 () (_ BitVec 64))
(declare-fun z0_ack!3152 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3158) ((_ to_fp 11 53) x1_ack!3150))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3151) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3156) ((_ to_fp 11 53) x0_ack!3158))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3156) ((_ to_fp 11 53) x1_ack!3150))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3157) ((_ to_fp 11 53) y0_ack!3151))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3157) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3150)
                       ((_ to_fp 11 53) x0_ack!3158))
               ((_ to_fp 11 53) x0_ack!3158))
       ((_ to_fp 11 53) x1_ack!3150)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3150)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3150)
                       ((_ to_fp 11 53) x0_ack!3158)))
       ((_ to_fp 11 53) x0_ack!3158)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3151))
               ((_ to_fp 11 53) y0_ack!3151))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3151)))
       ((_ to_fp 11 53) y0_ack!3151)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3156)
                           ((_ to_fp 11 53) x0_ack!3158))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3150)
                           ((_ to_fp 11 53) x0_ack!3158))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!3157)
                           ((_ to_fp 11 53) y0_ack!3151))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!3151)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!3152)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!3155)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!3153))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven a!3 a!4) a!5)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z2_ack!3154))))))

(check-sat)
(exit)
