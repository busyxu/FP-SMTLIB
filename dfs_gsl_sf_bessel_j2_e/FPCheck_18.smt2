(declare-fun a_ack!39 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!39) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!39))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!39))
            ((_ to_fp 11 53) #x3ff4cccccccccccd))))
(assert (FPCHECK_FDIV_OVERFLOW
  #x4008000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!39)
          ((_ to_fp 11 53) a_ack!39))))

(check-sat)
(exit)
