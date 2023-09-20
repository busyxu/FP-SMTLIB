(declare-fun c_ack!1028 () (_ BitVec 64))
(declare-fun b_ack!1027 () (_ BitVec 64))
(declare-fun a_ack!1029 () (_ BitVec 64))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1027))
       (fp.abs ((_ to_fp 11 53) c_ack!1028))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!1029))
       (fp.abs ((_ to_fp 11 53) b_ack!1027))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!1029))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1029))
                           (fp.abs ((_ to_fp 11 53) a_ack!1029)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1029))
                           (fp.abs ((_ to_fp 11 53) a_ack!1029)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1027))
                           (fp.abs ((_ to_fp 11 53) a_ack!1029)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1027))
                           (fp.abs ((_ to_fp 11 53) a_ack!1029))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1029))
                           (fp.abs ((_ to_fp 11 53) a_ack!1029)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!1029))
                           (fp.abs ((_ to_fp 11 53) a_ack!1029)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1027))
                           (fp.abs ((_ to_fp 11 53) a_ack!1029)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1027))
                           (fp.abs ((_ to_fp 11 53) a_ack!1029))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))

(check-sat)
(exit)
