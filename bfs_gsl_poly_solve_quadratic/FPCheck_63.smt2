(declare-fun a_ack!326 () (_ BitVec 64))
(declare-fun c_ack!325 () (_ BitVec 64))
(declare-fun b_ack!324 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!326) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!324)
                           ((_ to_fp 11 53) b_ack!324))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!326))
                           ((_ to_fp 11 53) c_ack!325)))))
  (fp.gt a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!324) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) #x8000000000000000)
                        ((_ to_fp 11 53) c_ack!325)))
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) a_ack!326))
                ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) c_ack!325))
                   ((_ to_fp 11 53) a_ack!326))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
