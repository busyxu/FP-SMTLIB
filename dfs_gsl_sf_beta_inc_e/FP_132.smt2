(declare-fun c_ack!2512 () (_ BitVec 64))
(declare-fun a_ack!2513 () (_ BitVec 64))
(declare-fun b_ack!2511 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2512) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2512) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2513) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2511) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) b_ack!2511) (CF_floor b_ack!2511))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!2513)
               ((_ to_fp 11 53) b_ack!2511))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!2513)
                          ((_ to_fp 11 53) b_ack!2511))
                  (CF_floor (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2513)
                                    ((_ to_fp 11 53) b_ack!2511))))))
(let ((a!2 (not (fp.eq ((_ to_fp 11 53)
                         roundNearestTiesToEven
                         (ite a!1 #x00000001 #x00000000))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2512) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2512) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2513) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!2511) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) b_ack!2511))
               ((_ to_fp 11 53) b_ack!2511))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) b_ack!2511)))
       ((_ to_fp 11 53) b_ack!2511)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2513)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) a_ack!2513))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2513)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!2513)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2513) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!2511))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2513)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2512)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) c_ack!2512)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!2512)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2512)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2512)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2513)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) a_ack!2513))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!2511)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2512) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) c_ack!2512))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2513)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!2511))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2513)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) a_ack!2513)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2513) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) #x3ff0000000000000)
                ((_ to_fp 11 53) b_ack!2511))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!2513)
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!2512) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2512) ((_ to_fp 11 53) #x3fefd70a3d70a3d7))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!2513))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!2513))
                  (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) b_ack!2511))))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2512) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!2513))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!2513)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) a_ack!2513))
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!2511))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 (fp.abs ((_ to_fp 11 53) a_ack!2513)))
         (fp.abs (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         ((_ to_fp 11 53) b_ack!2511))))))
(assert (let ((a!1 (fp.abs (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!2511))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) a_ack!2513))
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!2511))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!2511))))))
  (fp.eq a!2 (fp.abs ((_ to_fp 11 53) a_ack!2513))))))

(check-sat)
(exit)
