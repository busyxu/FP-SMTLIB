(declare-fun a_ack!329 () (_ BitVec 32))
(declare-fun b_ack!328 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!329 #xffffffff)))
(assert (= #xffffffff a_ack!329))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!328) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!328) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_INVALID
  (CF_exp b_ack!328)
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (CF_exp b_ack!328))))

(check-sat)
(exit)
