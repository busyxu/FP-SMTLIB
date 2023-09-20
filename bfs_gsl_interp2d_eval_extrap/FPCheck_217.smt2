(declare-fun x1_ack!2246 () (_ BitVec 64))
(declare-fun x0_ack!2254 () (_ BitVec 64))
(declare-fun y0_ack!2247 () (_ BitVec 64))
(declare-fun x_ack!2252 () (_ BitVec 64))
(declare-fun y_ack!2253 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!2250 () (_ BitVec 64))
(declare-fun z1_ack!2249 () (_ BitVec 64))
(declare-fun z3_ack!2251 () (_ BitVec 64))
(declare-fun z0_ack!2248 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2254) ((_ to_fp 11 53) x1_ack!2246))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2247) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2252) ((_ to_fp 11 53) x0_ack!2254))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2252) ((_ to_fp 11 53) x1_ack!2246)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2253) ((_ to_fp 11 53) y0_ack!2247))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2253) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2246)
                       ((_ to_fp 11 53) x0_ack!2254))
               ((_ to_fp 11 53) x0_ack!2254))
       ((_ to_fp 11 53) x1_ack!2246)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2246)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2246)
                       ((_ to_fp 11 53) x0_ack!2254)))
       ((_ to_fp 11 53) x0_ack!2254)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2253)
                       ((_ to_fp 11 53) y0_ack!2247))
               ((_ to_fp 11 53) y0_ack!2247))
       ((_ to_fp 11 53) y_ack!2253)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2253)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2253)
                       ((_ to_fp 11 53) y0_ack!2247)))
       ((_ to_fp 11 53) y0_ack!2247)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!2252)
                           ((_ to_fp 11 53) x0_ack!2254))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2246)
                           ((_ to_fp 11 53) x0_ack!2254))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!2253)
                           ((_ to_fp 11 53) y0_ack!2247))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!2247)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!2248)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!2251)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!2249))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven a!3 a!4) a!5)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z2_ack!2250))))))

(check-sat)
(exit)
