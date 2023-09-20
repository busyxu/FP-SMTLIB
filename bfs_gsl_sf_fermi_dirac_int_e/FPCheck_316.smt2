(declare-fun a_ack!952 () (_ BitVec 32))
(declare-fun b_ack!951 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!952 #xffffffff)))
(assert (not (= #xffffffff a_ack!952)))
(assert (not (= #x00000000 a_ack!952)))
(assert (not (= #x00000001 a_ack!952)))
(assert (not (= #x00000002 a_ack!952)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!951) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!951) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!951) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  (CF_exp b_ack!951)))
  (CF_pow #x3ff0000000000000
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!952)
                  ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
