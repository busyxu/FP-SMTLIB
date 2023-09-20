(declare-fun limit_ack!6558 () (_ BitVec 64))
(declare-fun epsabs_ack!6563 () (_ BitVec 64))
(declare-fun a_ack!6564 () (_ BitVec 64))
(declare-fun x1_ack!6559 () (_ BitVec 64))
(declare-fun x2_ack!6560 () (_ BitVec 64))
(declare-fun x3_ack!6561 () (_ BitVec 64))
(declare-fun b_ack!6562 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!6558)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6563)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6559) ((_ to_fp 11 53) a_ack!6564))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6560) ((_ to_fp 11 53) x1_ack!6559))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6561) ((_ to_fp 11 53) x2_ack!6560))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6562) ((_ to_fp 11 53) x3_ack!6561))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6564)
                                   ((_ to_fp 11 53) x1_ack!6559))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6559)
                                   ((_ to_fp 11 53) a_ack!6564)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6564)
                                   ((_ to_fp 11 53) x1_ack!6559)))
                   a!1)))
  (FPCHECK_FDIV_UNDERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
