(declare-fun a_ack!1648 () (_ BitVec 64))
(declare-fun b_ack!1647 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1648) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1647) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1648) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1647) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1648) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!1647) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1648) ((_ to_fp 11 53) b_ack!1647))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1648) ((_ to_fp 11 53) b_ack!1647)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1648)
               ((_ to_fp 11 53) b_ack!1647))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1648) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1648) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1648) ((_ to_fp 11 53) #x4000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3ff5555555555555
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1648)
          ((_ to_fp 11 53) #x3fe0000000000000))))

(check-sat)
(exit)
