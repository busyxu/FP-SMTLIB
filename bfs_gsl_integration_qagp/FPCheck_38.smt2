(declare-fun limit_ack!643 () (_ BitVec 64))
(declare-fun epsabs_ack!648 () (_ BitVec 64))
(declare-fun a_ack!649 () (_ BitVec 64))
(declare-fun x1_ack!644 () (_ BitVec 64))
(declare-fun x2_ack!645 () (_ BitVec 64))
(declare-fun x3_ack!646 () (_ BitVec 64))
(declare-fun b_ack!647 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!643)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!648)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!644) ((_ to_fp 11 53) a_ack!649))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!645) ((_ to_fp 11 53) x1_ack!644))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!646) ((_ to_fp 11 53) x2_ack!645))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!647) ((_ to_fp 11 53) x3_ack!646))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!649)
                                   ((_ to_fp 11 53) x1_ack!644))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!644)
                  ((_ to_fp 11 53) a_ack!649)))
  #x3fef2a3e062af2d8))

(check-sat)
(exit)
