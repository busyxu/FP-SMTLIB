(declare-fun a_ack!16 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!16))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!16))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  #x4040000000000000
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!16))
          (fp.abs ((_ to_fp 11 53) a_ack!16)))))

(check-sat)
(exit)
