(declare-fun a_ack!1398 () (_ BitVec 32))
(declare-fun b_ack!1397 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 a_ack!1398))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1397) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1397) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1397) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!1397))
        ((_ to_fp 11 53) #x4000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!1397))
  (fp.abs ((_ to_fp 11 53) b_ack!1397))))

(check-sat)
(exit)
