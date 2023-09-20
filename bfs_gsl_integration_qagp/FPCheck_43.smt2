(declare-fun limit_ack!734 () (_ BitVec 64))
(declare-fun epsabs_ack!739 () (_ BitVec 64))
(declare-fun a_ack!740 () (_ BitVec 64))
(declare-fun x1_ack!735 () (_ BitVec 64))
(declare-fun x2_ack!736 () (_ BitVec 64))
(declare-fun x3_ack!737 () (_ BitVec 64))
(declare-fun b_ack!738 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!734)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!739)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!735) ((_ to_fp 11 53) a_ack!740))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!736) ((_ to_fp 11 53) x1_ack!735))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!737) ((_ to_fp 11 53) x2_ack!736))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!738) ((_ to_fp 11 53) x3_ack!737))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!740)
                                   ((_ to_fp 11 53) x1_ack!735))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!735)
                                   ((_ to_fp 11 53) a_ack!740)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!740)
                                   ((_ to_fp 11 53) x1_ack!735)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
