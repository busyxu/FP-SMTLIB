(declare-fun b_ack!580 () (_ BitVec 64))
(declare-fun a_ack!581 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!580) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!580) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!581 #x00000000)))
(assert (not (= #x00000000 a_ack!581)))
(assert (not (= #x00000001 a_ack!581)))
(assert (not (bvslt #x000186a0 a_ack!581)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!580) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000002 a_ack!581))
  #x0000000000000000))

(check-sat)
(exit)
