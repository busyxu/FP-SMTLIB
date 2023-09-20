(declare-fun limit_ack!2463 () (_ BitVec 64))
(declare-fun epsabs_ack!2468 () (_ BitVec 64))
(declare-fun a_ack!2469 () (_ BitVec 64))
(declare-fun x1_ack!2464 () (_ BitVec 64))
(declare-fun x2_ack!2465 () (_ BitVec 64))
(declare-fun x3_ack!2466 () (_ BitVec 64))
(declare-fun b_ack!2467 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!2463)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2468)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2464) ((_ to_fp 11 53) a_ack!2469))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2465) ((_ to_fp 11 53) x1_ack!2464))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2466) ((_ to_fp 11 53) x2_ack!2465))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2467) ((_ to_fp 11 53) x3_ack!2466))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2469)
                                   ((_ to_fp 11 53) x1_ack!2464))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2464)
                                   ((_ to_fp 11 53) a_ack!2469)))
                   ((_ to_fp 11 53) #x3fe5bdb9228de198))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2469)
                                   ((_ to_fp 11 53) x1_ack!2464)))
                   a!1)))
  (FPCHECK_FDIV_UNDERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
