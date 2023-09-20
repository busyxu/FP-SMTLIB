(declare-fun b_ack!775 () (_ BitVec 64))
(declare-fun c_ack!776 () (_ BitVec 64))
(declare-fun d_ack!777 () (_ BitVec 32))
(declare-fun a_ack!778 () (_ BitVec 64))
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!775) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!776) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!776)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!777))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!775) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!775) ((_ to_fp 11 53) #x3ff3333333333333))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!775)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) a_ack!778)))))
(assert (let ((a!1 (CF_ceil (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!776)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (bvslt #x00000000 ((_ fp.to_sbv 32) roundTowardZero a!1)))))
(assert (FPCHECK_FSUB_ACCURACY c_ack!776 #x0000000000000000))

(check-sat)
(exit)
