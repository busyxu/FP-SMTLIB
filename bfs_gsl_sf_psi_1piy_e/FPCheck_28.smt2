(declare-fun a_ack!47 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!47))
            ((_ to_fp 11 53) #x408f400000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!47))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!47)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!47))
          (fp.abs ((_ to_fp 11 53) a_ack!47)))))

(check-sat)
(exit)
