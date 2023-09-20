(declare-fun b_ack!753 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun a_ack!754 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!753) ((_ to_fp 11 53) #x404e000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!753) ((_ to_fp 11 53) #xc04e000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!753))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!753))
       ((_ to_fp 11 53) #x40862e42fefa39ef)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!753)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!753)))
                   (CF_exp b_ack!753))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (CF_exp b_ack!753)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (CF_exp b_ack!753)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!753)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (CF_exp b_ack!753)))))
  (fp.eq a!1 (CF_exp b_ack!753))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (CF_exp b_ack!753)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (CF_exp b_ack!753))))))
  (FPCHECK_FMUL_OVERFLOW
    #x3cc0000000000000
    (fp.abs (fp.mul roundNearestTiesToEven (CF_cos a_ack!754) a!1)))))

(check-sat)
(exit)
