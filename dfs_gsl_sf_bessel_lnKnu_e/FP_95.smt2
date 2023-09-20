(declare-fun b_ack!1649 () (_ BitVec 64))
(declare-fun a_ack!1650 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1649) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1650) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1650) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1649) ((_ to_fp 11 53) #x4000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1650) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1650)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))

(check-sat)
(exit)
