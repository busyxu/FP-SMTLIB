(declare-fun a_ack!7 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.leq ((_ to_fp 11 53) a_ack!7) ((_ to_fp 11 53) #x4014000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!7) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!7) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) a_ack!7))
  #x3ff0000000000000))

(check-sat)
(exit)
