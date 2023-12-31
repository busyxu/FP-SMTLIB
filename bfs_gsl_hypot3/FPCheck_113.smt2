(declare-fun c_ack!578 () (_ BitVec 64))
(declare-fun b_ack!577 () (_ BitVec 64))
(declare-fun a_ack!579 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!577))
       (fp.abs ((_ to_fp 11 53) c_ack!578))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!579))
            (fp.abs ((_ to_fp 11 53) b_ack!577)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!577))
       (fp.abs ((_ to_fp 11 53) c_ack!578))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!577))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW (fp.abs ((_ to_fp 11 53) b_ack!577)) #x7ff8000000000001))

(check-sat)
(exit)
