(declare-fun a_ack!157 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!157))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!157))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!157))
             ((_ to_fp 11 53) #x401c48c6001f1ea6))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!157))
        ((_ to_fp 11 53) #x4190000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x4059000000000000
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!157))
          (fp.abs ((_ to_fp 11 53) a_ack!157)))))

(check-sat)
(exit)
