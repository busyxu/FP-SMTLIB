(declare-fun limit_ack!2386 () (_ BitVec 64))
(declare-fun epsabs_ack!2391 () (_ BitVec 64))
(declare-fun a_ack!2392 () (_ BitVec 64))
(declare-fun x1_ack!2387 () (_ BitVec 64))
(declare-fun x2_ack!2388 () (_ BitVec 64))
(declare-fun x3_ack!2389 () (_ BitVec 64))
(declare-fun b_ack!2390 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2386)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2391)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2387) ((_ to_fp 11 53) a_ack!2392))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2388) ((_ to_fp 11 53) x1_ack!2387))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2389) ((_ to_fp 11 53) x2_ack!2388))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2390) ((_ to_fp 11 53) x3_ack!2389))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2392)
                                   ((_ to_fp 11 53) x1_ack!2387))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2387)
                                   ((_ to_fp 11 53) a_ack!2392)))
                   ((_ to_fp 11 53) #x3fe5bdb9228de198))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2392)
                                   ((_ to_fp 11 53) x1_ack!2387)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
