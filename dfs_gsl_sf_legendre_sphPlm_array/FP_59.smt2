(declare-fun b_ack!1131 () (_ BitVec 32))
(declare-fun a_ack!1133 () (_ BitVec 32))
(declare-fun c_ack!1132 () (_ BitVec 64))
(assert (not (bvslt b_ack!1131 #x00000000)))
(assert (not (bvslt a_ack!1133 b_ack!1131)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1132) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1132) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000000 b_ack!1131))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1132) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1132) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!1131)))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!1132))
                           ((_ to_fp 11 53) c_ack!1132))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!1132))
                           ((_ to_fp 11 53) c_ack!1132)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f6428a2f98d728d))))

(check-sat)
(exit)
