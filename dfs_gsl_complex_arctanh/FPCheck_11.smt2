(declare-fun y_ack!39 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!40 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!39) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 x_ack!40))

(check-sat)
(exit)
