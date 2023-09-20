(declare-fun a_ack!1 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!1) ((_ to_fp 11 53) #xc085eeaad5511c64)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!1) ((_ to_fp 11 53) #xc024000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW #x3ff0000000000000 a_ack!1))

(check-sat)
(exit)
