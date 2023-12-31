(declare-fun b_ack!1907 () (_ BitVec 64))
(declare-fun a_ack!1908 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1907) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1908) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1908) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1907) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1908) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!1907))
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) a_ack!1908))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW a_ack!1908 a_ack!1908))

(check-sat)
(exit)
