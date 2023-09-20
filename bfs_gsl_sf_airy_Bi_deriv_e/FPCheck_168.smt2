(declare-fun a_ack!458 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!458) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!458) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!458) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!458) ((_ to_fp 11 53) #x6a9965fea53d6d85)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  (fp.div roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!458)
                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
          ((_ to_fp 11 53) #x4008000000000000))))

(check-sat)
(exit)
