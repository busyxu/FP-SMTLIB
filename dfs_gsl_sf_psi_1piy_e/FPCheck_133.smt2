(declare-fun a_ack!205 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!205))
            ((_ to_fp 11 53) #x408f400000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!205))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!205))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3da614ea0a67bc29
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!205)
                  ((_ to_fp 11 53) a_ack!205))
          ((_ to_fp 11 53) #x3cea961904954325))))

(check-sat)
(exit)
