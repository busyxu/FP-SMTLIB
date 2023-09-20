(declare-fun a_ack!160 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!160) ((_ to_fp 11 53) #xc085eeaad5511c64)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!160) ((_ to_fp 11 53) #xc024000000000000)))
(assert (FPCHECK_FDIV_ACCURACY #x4034000000000000 a_ack!160))

(check-sat)
(exit)
