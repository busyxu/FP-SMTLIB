(declare-fun a_ack!127 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!127) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!127))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!127))
       ((_ to_fp 11 53) #x3ff4cccccccccccd)))
(assert (FPCHECK_FMUL_OVERFLOW a_ack!127 a_ack!127))

(check-sat)
(exit)
