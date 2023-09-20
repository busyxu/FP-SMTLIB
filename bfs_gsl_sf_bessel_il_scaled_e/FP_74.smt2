(declare-fun b_ack!1052 () (_ BitVec 64))
(declare-fun a_ack!1053 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1052) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1053 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1052) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!1053)))
(assert (not (= #x00000001 a_ack!1053)))
(assert (not (= #x00000002 a_ack!1053)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!1052))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1052)
                       ((_ to_fp 11 53) b_ack!1052))
               ((_ to_fp 11 53) b_ack!1052))
       ((_ to_fp 11 53) b_ack!1052)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!1052))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1052)
                       ((_ to_fp 11 53) b_ack!1052))
               ((_ to_fp 11 53) b_ack!1052))
       ((_ to_fp 11 53) b_ack!1052)))

(check-sat)
(exit)
