(declare-fun a_ack!61 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!61) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!61) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!61) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!61) ((_ to_fp 11 53) #x4041acdd632f662a))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!61) ((_ to_fp 11 53) #x4086232bdd7abcd2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) a_ack!61)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!61)
                                   ((_ to_fp 11 53) a_ack!61)))
                   a!1)))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!61)
                 ((_ to_fp 11 53) a_ack!61))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) a_ack!61)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!61)
                                   ((_ to_fp 11 53) a_ack!61)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!61)
                           ((_ to_fp 11 53) a_ack!61)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!61)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!61)
                           ((_ to_fp 11 53) a_ack!61)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!1)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!61))))))
  (FPCHECK_FSUB_UNDERFLOW #x40133ba004f00621 a!2))))

(check-sat)
(exit)
