(declare-fun x1_ack!2141 () (_ BitVec 64))
(declare-fun x0_ack!2148 () (_ BitVec 64))
(declare-fun y0_ack!2142 () (_ BitVec 64))
(declare-fun x_ack!2146 () (_ BitVec 64))
(declare-fun y_ack!2147 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z1_ack!2144 () (_ BitVec 64))
(declare-fun z3_ack!2145 () (_ BitVec 64))
(declare-fun z0_ack!2143 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2148) ((_ to_fp 11 53) x1_ack!2141))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2142) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2146) ((_ to_fp 11 53) x0_ack!2148))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2146) ((_ to_fp 11 53) x1_ack!2141)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2147) ((_ to_fp 11 53) y0_ack!2142))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2147) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2141)
                       ((_ to_fp 11 53) x0_ack!2148))
               ((_ to_fp 11 53) x0_ack!2148))
       ((_ to_fp 11 53) x1_ack!2141)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2141)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2141)
                       ((_ to_fp 11 53) x0_ack!2148)))
       ((_ to_fp 11 53) x0_ack!2148)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2147)
                       ((_ to_fp 11 53) y0_ack!2142))
               ((_ to_fp 11 53) y0_ack!2142))
       ((_ to_fp 11 53) y_ack!2147)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2147)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2147)
                       ((_ to_fp 11 53) y0_ack!2142)))
       ((_ to_fp 11 53) y0_ack!2142)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!2146)
                           ((_ to_fp 11 53) x0_ack!2148))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2141)
                           ((_ to_fp 11 53) x0_ack!2148))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!2147)
                           ((_ to_fp 11 53) y0_ack!2142))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!2142)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!2143)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!2145)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!2144))))
  (FPCHECK_FADD_UNDERFLOW (fp.add roundNearestTiesToEven a!3 a!4) a!5))))

(check-sat)
(exit)
