(declare-fun limit_ack!7076 () (_ BitVec 64))
(declare-fun epsabs_ack!7081 () (_ BitVec 64))
(declare-fun a_ack!7082 () (_ BitVec 64))
(declare-fun x1_ack!7077 () (_ BitVec 64))
(declare-fun x2_ack!7078 () (_ BitVec 64))
(declare-fun x3_ack!7079 () (_ BitVec 64))
(declare-fun b_ack!7080 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7076)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!7081)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!7077) ((_ to_fp 11 53) a_ack!7082))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!7078) ((_ to_fp 11 53) x1_ack!7077))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!7079) ((_ to_fp 11 53) x2_ack!7078))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7080) ((_ to_fp 11 53) x3_ack!7079))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7082)
                                   ((_ to_fp 11 53) x1_ack!7077))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7077)
                                   ((_ to_fp 11 53) a_ack!7082)))
                   ((_ to_fp 11 53) #x3fd2d755295ea137))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!7082)
                    ((_ to_fp 11 53) x1_ack!7077)))
    a!1)))

(check-sat)
(exit)
