(declare-fun y_ack!47 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!48 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) y_ack!47))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x4000000000000000 x_ack!48))

(check-sat)
(exit)
