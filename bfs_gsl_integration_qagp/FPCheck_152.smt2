(declare-fun limit_ack!2372 () (_ BitVec 64))
(declare-fun epsabs_ack!2377 () (_ BitVec 64))
(declare-fun a_ack!2378 () (_ BitVec 64))
(declare-fun x1_ack!2373 () (_ BitVec 64))
(declare-fun x2_ack!2374 () (_ BitVec 64))
(declare-fun x3_ack!2375 () (_ BitVec 64))
(declare-fun b_ack!2376 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2372)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2377)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2373) ((_ to_fp 11 53) a_ack!2378))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2374) ((_ to_fp 11 53) x1_ack!2373))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2375) ((_ to_fp 11 53) x2_ack!2374))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2376) ((_ to_fp 11 53) x3_ack!2375))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2378)
                                   ((_ to_fp 11 53) x1_ack!2373))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2373)
                                   ((_ to_fp 11 53) a_ack!2378)))
                   ((_ to_fp 11 53) #x3fe5bdb9228de198))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2378)
                                   ((_ to_fp 11 53) x1_ack!2373)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
