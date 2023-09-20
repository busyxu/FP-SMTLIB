(declare-fun a_ack!280 () (_ BitVec 64))
(declare-fun b_ack!279 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!280) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!279) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!279) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!279) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!279)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!280)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!280) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!280) ((_ to_fp 11 53) b_ack!279))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!279)
                                  ((_ to_fp 11 53) a_ack!280))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!279)
                                  ((_ to_fp 11 53) a_ack!280)))
                  ((_ to_fp 11 53) a_ack!280))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!280) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!279)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!280)))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!279 a_ack!280))

(check-sat)
(exit)
