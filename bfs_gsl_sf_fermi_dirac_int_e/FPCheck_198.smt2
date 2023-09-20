(declare-fun a_ack!597 () (_ BitVec 32))
(declare-fun b_ack!596 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!597 #xffffffff)))
(assert (not (= #xffffffff a_ack!597)))
(assert (= #x00000000 a_ack!597))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!596) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!596) ((_ to_fp 11 53) #xc014000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc999999999999a)
                           (fp.div roundNearestTiesToEven
                                   (CF_exp b_ack!596)
                                   ((_ to_fp 11 53) #x4018000000000000)))
                   (fp.div roundNearestTiesToEven
                           (CF_exp b_ack!596)
                           ((_ to_fp 11 53) #x4018000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc999999999999a)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc999999999999a)
                           (fp.div roundNearestTiesToEven
                                   (CF_exp b_ack!596)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 (CF_exp b_ack!596)
                 ((_ to_fp 11 53) #x4018000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp b_ack!596)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc999999999999a)
                           (fp.div roundNearestTiesToEven
                                   (CF_exp b_ack!596)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
  (FPCHECK_FSUB_ACCURACY #x3fd0000000000000 a!1)))

(check-sat)
(exit)
