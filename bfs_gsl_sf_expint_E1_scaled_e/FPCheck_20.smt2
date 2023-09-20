(declare-fun a_ack!32 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!32) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!32) ((_ to_fp 11 53) #xc024000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4034000000000000)
                  ((_ to_fp 11 53) a_ack!32))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
