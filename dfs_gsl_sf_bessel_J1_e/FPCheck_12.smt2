(declare-fun a_ack!24 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!24) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!24))
            ((_ to_fp 11 53) #x0028cccccccccccd))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!24)) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3ea937e11175f095
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!24)
                  ((_ to_fp 11 53) a_ack!24))
          ((_ to_fp 11 53) #xbe38d48ed61d7aab))))

(check-sat)
(exit)
