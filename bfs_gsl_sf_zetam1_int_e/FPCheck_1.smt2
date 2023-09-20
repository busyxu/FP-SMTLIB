(declare-fun a_ack!4 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!4 #x00000000)))
(assert (not (= #x00000001 a_ack!4)))
(assert (not (bvsle a_ack!4 #x00000064)))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4)
             ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4)
            ((_ to_fp 11 53) #x402e000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x8000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4)))

(check-sat)
(exit)
