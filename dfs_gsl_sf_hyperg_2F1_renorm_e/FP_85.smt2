(declare-fun a_ack!1403 () (_ BitVec 64))
(declare-fun b_ack!1400 () (_ BitVec 64))
(declare-fun c_ack!1401 () (_ BitVec 64))
(declare-fun d_ack!1402 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1403) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1400) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1401) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1401)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1401)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1401) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1401) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1401))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1403) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1400) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1401) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) d_ack!1402)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1401)
                       ((_ to_fp 11 53) a_ack!1403))
               ((_ to_fp 11 53) a_ack!1403))
       ((_ to_fp 11 53) c_ack!1401)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!1401)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1401)
                       ((_ to_fp 11 53) a_ack!1403)))
       ((_ to_fp 11 53) a_ack!1403)))
(assert (let ((a!1 (fp.gt (fp.sub roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1401)
                                  ((_ to_fp 11 53) a_ack!1403))
                          ((_ to_fp 11 53) b_ack!1400))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1402) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!1402))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1401)
                       ((_ to_fp 11 53) b_ack!1400))
               ((_ to_fp 11 53) b_ack!1400))
       ((_ to_fp 11 53) c_ack!1401)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!1401)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1401)
                       ((_ to_fp 11 53) b_ack!1400)))
       ((_ to_fp 11 53) b_ack!1400)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1401)
                                  ((_ to_fp 11 53) b_ack!1400)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1401)
                                  ((_ to_fp 11 53) a_ack!1403)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1403) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1400) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!1401) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) d_ack!1402) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1402) ((_ to_fp 11 53) #x3fefd70a3d70a3d7))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1403))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1400))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!1403))
            (fp.abs ((_ to_fp 11 53) b_ack!1400)))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1402) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!1403))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!1400)))
                   (fp.abs ((_ to_fp 11 53) d_ack!1402)))))
(let ((a!2 (fp.lt a!1
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4000000000000000)
                          (fp.abs ((_ to_fp 11 53) c_ack!1401))))))
  (not a!2))))

(check-sat)
(exit)
