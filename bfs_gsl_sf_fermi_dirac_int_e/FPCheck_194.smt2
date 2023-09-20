(declare-fun a_ack!581 () (_ BitVec 32))
(declare-fun b_ack!580 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!581 #xffffffff)))
(assert (not (= #xffffffff a_ack!581)))
(assert (= #x00000000 a_ack!581))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!580) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!580) ((_ to_fp 11 53) #xc014000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc999999999999a)
                           (fp.div roundNearestTiesToEven
                                   (CF_exp b_ack!580)
                                   ((_ to_fp 11 53) #x4018000000000000)))
                   (fp.div roundNearestTiesToEven
                           (CF_exp b_ack!580)
                           ((_ to_fp 11 53) #x4018000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc999999999999a)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc999999999999a)
                           (fp.div roundNearestTiesToEven
                                   (CF_exp b_ack!580)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 (CF_exp b_ack!580)
                 ((_ to_fp 11 53) #x4018000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (CF_exp b_ack!580)
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fc999999999999a)
          (fp.div roundNearestTiesToEven
                  (CF_exp b_ack!580)
                  ((_ to_fp 11 53) #x4018000000000000)))))

(check-sat)
(exit)
