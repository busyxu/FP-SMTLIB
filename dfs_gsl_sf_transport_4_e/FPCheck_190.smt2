(declare-fun a_ack!280 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!280) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!280) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!280) ((_ to_fp 11 53) #x3e68000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!280) ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!280)
                  ((_ to_fp 11 53) a_ack!280))
          ((_ to_fp 11 53) #x4020000000000000))
  #x3fe0000000000000))

(check-sat)
(exit)
