(declare-fun a_ack!106 () (_ BitVec 64))
(declare-fun b_ack!105 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!106) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!105) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!105) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!105) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!105)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!106)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!106) ((_ to_fp 11 53) #x412e848000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!105)
          ((_ to_fp 11 53) a_ack!106))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!105)
          ((_ to_fp 11 53) a_ack!106))))

(check-sat)
(exit)
