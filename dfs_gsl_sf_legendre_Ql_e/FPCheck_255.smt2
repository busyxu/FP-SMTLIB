(declare-fun b_ack!760 () (_ BitVec 64))
(declare-fun a_ack!761 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!760) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!760) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!761 #x00000000)))
(assert (not (= #x00000000 a_ack!761)))
(assert (not (= #x00000001 a_ack!761)))
(assert (bvslt #x000186a0 a_ack!761))
(assert (fp.lt ((_ to_fp 11 53) b_ack!760) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!761)
  #x3fe0000000000000))

(check-sat)
(exit)
