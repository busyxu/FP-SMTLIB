(declare-fun a_ack!117 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!116 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!117) ((_ to_fp 11 53) #xc000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!117)))
                   ((_ to_fp 11 53) b_ack!116))))
  (FPCHECK_FMUL_UNDERFLOW #x4000000000000000 (fp.abs a!1))))

(check-sat)
(exit)
