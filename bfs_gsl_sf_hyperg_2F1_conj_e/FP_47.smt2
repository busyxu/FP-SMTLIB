(declare-fun c_ack!1235 () (_ BitVec 64))
(declare-fun d_ack!1236 () (_ BitVec 64))
(declare-fun a_ack!1237 () (_ BitVec 64))
(declare-fun b_ack!1234 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1235) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) d_ack!1236))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1235) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!1236))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) c_ack!1235) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) d_ack!1236) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1237))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1234))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt ((_ to_fp 11 53) d_ack!1236) ((_ to_fp 11 53) #xbfd0000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) d_ack!1236)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!1236))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!1236)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!1236)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 ((_ to_fp 11 53) d_ack!1236)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) d_ack!1236)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!1236))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!1236)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!1236)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 ((_ to_fp 11 53) d_ack!1236)))))

(check-sat)
(exit)
