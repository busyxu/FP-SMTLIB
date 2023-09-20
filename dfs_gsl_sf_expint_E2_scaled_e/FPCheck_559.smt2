(declare-fun a_ack!757 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!757) ((_ to_fp 11 53) #xc085eeaad5511c64)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!757) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!757) ((_ to_fp 11 53) #x4059000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!757) ((_ to_fp 11 53) #xc085eeaad5511c64)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!757) ((_ to_fp 11 53) #xc024000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4034000000000000)
          ((_ to_fp 11 53) a_ack!757))
  #x3ff0000000000000))

(check-sat)
(exit)
