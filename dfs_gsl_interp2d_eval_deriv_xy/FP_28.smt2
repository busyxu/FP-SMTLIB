(declare-fun x1_ack!1129 () (_ BitVec 64))
(declare-fun x0_ack!1133 () (_ BitVec 64))
(declare-fun y0_ack!1130 () (_ BitVec 64))
(declare-fun x_ack!1131 () (_ BitVec 64))
(declare-fun y_ack!1132 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1133) ((_ to_fp 11 53) x1_ack!1129))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1130) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1131) ((_ to_fp 11 53) x0_ack!1133))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1131) ((_ to_fp 11 53) x1_ack!1129))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1132) ((_ to_fp 11 53) y0_ack!1130))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1132) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1131) ((_ to_fp 11 53) x0_ack!1133))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1131) ((_ to_fp 11 53) x1_ack!1129)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1132) ((_ to_fp 11 53) y0_ack!1130))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1132) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!1129)
                                  ((_ to_fp 11 53) x0_ack!1133)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1129)
                                   ((_ to_fp 11 53) x0_ack!1133)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!1129)
                           ((_ to_fp 11 53) x0_ack!1133)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1129)
                                   ((_ to_fp 11 53) x0_ack!1133))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1129)
                                   ((_ to_fp 11 53) x0_ack!1133))))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) x1_ack!1129)
                 ((_ to_fp 11 53) x0_ack!1133)))))

(check-sat)
(exit)
