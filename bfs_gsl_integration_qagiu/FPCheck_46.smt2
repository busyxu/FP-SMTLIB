(declare-fun limit_ack!271 () (_ BitVec 64))
(declare-fun epsabs_ack!270 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!272 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!271)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!270)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!272)
                           ((_ to_fp 11 53) #x3f9abcb2bd7da4dd)))))
  (FPCHECK_FINVALID_LOG a!1 a!1)))

(check-sat)
(exit)
