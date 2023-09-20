(declare-fun b_ack!61 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun a_ack!62 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!61))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!61)) ((_ to_fp 11 53) #x40862e42fefa39ef)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!61)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!61)))
                   (CF_exp b_ack!61))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (CF_exp b_ack!61)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!61)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!61)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (CF_exp b_ack!61)))))
  (fp.eq a!1 (CF_exp b_ack!61))))
(assert (FPCHECK_FSUB_ACCURACY #x8000000000000000 (CF_sin a_ack!62)))

(check-sat)
(exit)
