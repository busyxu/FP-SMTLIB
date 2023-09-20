(declare-fun a_ack!1338 () (_ BitVec 64))
(declare-fun b_ack!1337 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1338) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1337) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1337) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1338) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1337)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!1338)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1338) ((_ to_fp 11 53) #x412e848000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1337)
                       ((_ to_fp 11 53) a_ack!1338))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1337)
                       ((_ to_fp 11 53) a_ack!1338)))
       ((_ to_fp 11 53) a_ack!1338)))
(assert (fp.leq (fp.div roundNearestTiesToEven
                (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) b_ack!1337)
                        ((_ to_fp 11 53) a_ack!1338))
                ((_ to_fp 11 53) a_ack!1338))
        ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
