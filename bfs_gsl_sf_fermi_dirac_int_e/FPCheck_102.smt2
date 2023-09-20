(declare-fun a_ack!325 () (_ BitVec 32))
(declare-fun b_ack!324 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!325 #xffffffff)))
(assert (= #xffffffff a_ack!325))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!324) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!324) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (CF_exp b_ack!324)
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (CF_exp b_ack!324))))

(check-sat)
(exit)
