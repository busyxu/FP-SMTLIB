(declare-fun a_ack!645 () (_ BitVec 64))
(declare-fun c_ack!643 () (_ BitVec 64))
(declare-fun d_ack!644 () (_ BitVec 64))
(declare-fun b_ack!642 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!645) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!643) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!643)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!643)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!643) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!643) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!643))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!643) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) d_ack!644))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!643) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!644))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!645))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!642))
            ((_ to_fp 11 53) #x4034000000000000))))
(assert (fp.gt ((_ to_fp 11 53) c_ack!643) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) d_ack!644) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!645))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!642))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!644) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) d_ack!644)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!644))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!644)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!644)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 ((_ to_fp 11 53) d_ack!644)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) d_ack!644)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!644))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!644)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!644)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 ((_ to_fp 11 53) d_ack!644)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!642))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!642)
                       ((_ to_fp 11 53) b_ack!642))
               ((_ to_fp 11 53) b_ack!642))
       ((_ to_fp 11 53) b_ack!642)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!642))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!642)
                       ((_ to_fp 11 53) b_ack!642))
               ((_ to_fp 11 53) b_ack!642))
       ((_ to_fp 11 53) b_ack!642)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!645)
                                   ((_ to_fp 11 53) a_ack!645))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!642)
                                   ((_ to_fp 11 53) b_ack!642)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!645)
                           ((_ to_fp 11 53) a_ack!645)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!642)
                 ((_ to_fp 11 53) b_ack!642)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!645)
                                   ((_ to_fp 11 53) a_ack!645))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!642)
                                   ((_ to_fp 11 53) b_ack!642)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!642)
                           ((_ to_fp 11 53) b_ack!642)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!645)
                 ((_ to_fp 11 53) a_ack!645)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!645)
                                   ((_ to_fp 11 53) a_ack!645))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!642)
                                   ((_ to_fp 11 53) b_ack!642)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) a_ack!645)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!645)
                                   ((_ to_fp 11 53) a_ack!645))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!642)
                                   ((_ to_fp 11 53) b_ack!642)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) a_ack!645)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))

(check-sat)
(exit)
