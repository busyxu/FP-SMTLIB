(declare-fun a_ack!177 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!176 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!177) ((_ to_fp 11 53) #xc000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!177)))
                   ((_ to_fp 11 53) b_ack!176))))
  (FPCHECK_FMUL_ACCURACY #x4000000000000000 (fp.abs a!1))))

(check-sat)
(exit)
