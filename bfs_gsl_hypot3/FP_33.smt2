(declare-fun c_ack!974 () (_ BitVec 64))
(declare-fun b_ack!973 () (_ BitVec 64))
(declare-fun a_ack!975 () (_ BitVec 64))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!973))
       (fp.abs ((_ to_fp 11 53) c_ack!974))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!975))
       (fp.abs ((_ to_fp 11 53) b_ack!973))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!975))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!975))
                           (fp.abs ((_ to_fp 11 53) a_ack!975)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!975))
                           (fp.abs ((_ to_fp 11 53) a_ack!975)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!973))
                           (fp.abs ((_ to_fp 11 53) a_ack!975)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!973))
                           (fp.abs ((_ to_fp 11 53) a_ack!975))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!975))
                           (fp.abs ((_ to_fp 11 53) a_ack!975)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!975))
                           (fp.abs ((_ to_fp 11 53) a_ack!975)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!973))
                           (fp.abs ((_ to_fp 11 53) a_ack!975)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!973))
                           (fp.abs ((_ to_fp 11 53) a_ack!975))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))

(check-sat)
(exit)
