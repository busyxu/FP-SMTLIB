(declare-fun b_ack!794 () (_ BitVec 64))
(declare-fun a_ack!795 () (_ BitVec 32))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!794) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!794) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!795 #x00000000)))
(assert (not (= #x00000000 a_ack!795)))
(assert (not (= #x00000001 a_ack!795)))
(assert (bvslt #x000186a0 a_ack!795))
(assert (fp.lt ((_ to_fp 11 53) b_ack!794) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt (CF_acos b_ack!794) ((_ to_fp 11 53) #x3f20000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  (CF_acos b_ack!794)
                  (CF_acos b_ack!794))
          ((_ to_fp 11 53) #x402e000000000000))))

(check-sat)
(exit)
