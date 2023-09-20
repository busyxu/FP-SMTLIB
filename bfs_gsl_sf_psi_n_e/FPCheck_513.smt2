(declare-fun a_ack!1404 () (_ BitVec 32))
(declare-fun b_ack!1403 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 a_ack!1404))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1403) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1403) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1403) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!1403))
        ((_ to_fp 11 53) #x4000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs ((_ to_fp 11 53) b_ack!1403))
  (fp.abs ((_ to_fp 11 53) b_ack!1403))))

(check-sat)
(exit)
