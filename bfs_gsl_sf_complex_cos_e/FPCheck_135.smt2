(declare-fun b_ack!264 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!264))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!264))
       ((_ to_fp 11 53) #x40862e42fefa39ef)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!264)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!264)))
                   (CF_exp b_ack!264))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (CF_exp b_ack!264)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!264)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!264)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (CF_exp b_ack!264)))))
  (fp.eq a!1 (CF_exp b_ack!264))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          (CF_exp b_ack!264)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  (CF_exp b_ack!264)))))

(check-sat)
(exit)
