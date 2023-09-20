(declare-fun a_ack!376 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.leq ((_ to_fp 11 53) a_ack!376) ((_ to_fp 11 53) #x4014000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!376) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!376) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!376) ((_ to_fp 11 53) #xc033000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #xc033000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) a_ack!376))))

(check-sat)
(exit)
