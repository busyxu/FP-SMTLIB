(declare-fun b_ack!287 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!287))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!287))
       ((_ to_fp 11 53) #x40862e42fefa39ef)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!287)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!287)))
                   (CF_exp b_ack!287))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (CF_exp b_ack!287)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!287)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!287)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (CF_exp b_ack!287)))))
  (fp.eq a!1 (CF_exp b_ack!287))))

(check-sat)
(exit)
