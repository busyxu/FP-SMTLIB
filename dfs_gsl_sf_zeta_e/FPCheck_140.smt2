(declare-fun a_ack!185 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!185) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!185) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!185) ((_ to_fp 11 53) #xc033000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW #x3ff0000000000000 a_ack!185))

(check-sat)
(exit)
