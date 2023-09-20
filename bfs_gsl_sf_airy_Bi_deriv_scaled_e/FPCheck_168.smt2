(declare-fun a_ack!458 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!458) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!458) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!458) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!458) ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4021805a83b66b50)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!458)
                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
  #xc000c02d41db35a8))

(check-sat)
(exit)
