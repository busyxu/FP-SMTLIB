(declare-fun x_ack!71 () (_ BitVec 64))
(declare-fun mu_ack!70 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!71) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!71) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) mu_ack!70) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) mu_ack!70) ((_ to_fp 11 53) #x4000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW #x4000000000000000 x_ack!71))

(check-sat)
(exit)
