(declare-fun a_ack!1999 () (_ BitVec 64))
(declare-fun b_ack!1998 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1999) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1999)
                     ((_ to_fp 11 53) b_ack!1998))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1998) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1998))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!1999))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1999) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1999)
                       ((_ to_fp 11 53) b_ack!1998))
               ((_ to_fp 11 53) a_ack!1999))
       ((_ to_fp 11 53) b_ack!1998)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1999)
                       ((_ to_fp 11 53) b_ack!1998))
               ((_ to_fp 11 53) b_ack!1998))
       ((_ to_fp 11 53) a_ack!1999)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1999)
                    ((_ to_fp 11 53) b_ack!1998))
            ((_ to_fp 11 53) #x4065600000000000))))
(assert (FPCHECK_FSUB_ACCURACY a_ack!1999 #x3ff0000000000000))

(check-sat)
(exit)
