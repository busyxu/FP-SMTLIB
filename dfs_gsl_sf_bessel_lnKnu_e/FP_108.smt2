(declare-fun b_ack!1823 () (_ BitVec 64))
(declare-fun a_ack!1824 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1823) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1824) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1824) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1823) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1823) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1824) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1824)
                       ((_ to_fp 11 53) #x3fe0000000000000))
               ((_ to_fp 11 53) a_ack!1824))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1824)
                       ((_ to_fp 11 53) #x3fe0000000000000))
               ((_ to_fp 11 53) #x3fe0000000000000))
       ((_ to_fp 11 53) a_ack!1824)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1823) ((_ to_fp 11 53) #x4000000000000000)))

(check-sat)
(exit)
