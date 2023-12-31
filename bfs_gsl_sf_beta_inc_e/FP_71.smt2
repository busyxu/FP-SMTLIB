(declare-fun c_ack!1500 () (_ BitVec 64))
(declare-fun a_ack!1501 () (_ BitVec 64))
(declare-fun b_ack!1499 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1500) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1500) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1501) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1499) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1501)
                    ((_ to_fp 11 53) b_ack!1499))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1500) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1500) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1501) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1499) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1501) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1499) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1501) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1499) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1501) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!1499) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1501) ((_ to_fp 11 53) b_ack!1499)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1501) ((_ to_fp 11 53) b_ack!1499))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1499)
               ((_ to_fp 11 53) a_ack!1501))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1501) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1501) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1501) ((_ to_fp 11 53) #x4000000000000000)))

(check-sat)
(exit)
