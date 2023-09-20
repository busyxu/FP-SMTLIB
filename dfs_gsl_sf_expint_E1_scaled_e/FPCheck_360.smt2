(declare-fun a_ack!469 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!469) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!469) ((_ to_fp 11 53) #xc024000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!469) ((_ to_fp 11 53) #xc010000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) a_ack!469))
  #x3ff0000000000000))

(check-sat)
(exit)
