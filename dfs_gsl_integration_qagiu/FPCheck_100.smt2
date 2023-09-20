(declare-fun limit_ack!755 () (_ BitVec 64))
(declare-fun epsabs_ack!754 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!756 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!755)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!754)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!756)
                           ((_ to_fp 11 53) #x4043264061f2d8c9)))))
  (FPCHECK_FINVALID_LOG a!1 a!1)))

(check-sat)
(exit)
