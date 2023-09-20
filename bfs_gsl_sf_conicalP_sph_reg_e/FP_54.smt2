(declare-fun c_ack!1026 () (_ BitVec 64))
(declare-fun a_ack!1027 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1026) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1027 #xffffffff)))
(assert (not (= #xffffffff a_ack!1027)))
(assert (not (= #x00000000 a_ack!1027)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1026) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1026) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!1026))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1026)
                       ((_ to_fp 11 53) c_ack!1026))
               ((_ to_fp 11 53) c_ack!1026))
       ((_ to_fp 11 53) c_ack!1026)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!1026))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1026)
                       ((_ to_fp 11 53) c_ack!1026))
               ((_ to_fp 11 53) c_ack!1026))
       ((_ to_fp 11 53) c_ack!1026)))

(check-sat)
(exit)
