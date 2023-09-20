(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!566 () (_ BitVec 64))
(declare-fun b_ack!564 () (_ BitVec 64))
(declare-fun c_ack!565 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!566)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!566)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d19000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!564)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) b_ack!564)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d19000000000000)))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) b_ack!564)
                                     ((_ to_fp 11 53) a_ack!566))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!564)
                                   ((_ to_fp 11 53) a_ack!566))
                           a!1))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3d19000000000000))))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!564) ((_ to_fp 11 53) #xbfb999999999999a))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!566) ((_ to_fp 11 53) #xbfb999999999999a))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!564)
                    ((_ to_fp 11 53) a_ack!566))
            ((_ to_fp 11 53) #xbfb999999999999a))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!565) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!564) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!566) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!566) ((_ to_fp 11 53) b_ack!564))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!564))
            ((_ to_fp 11 53) #x3d19000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!564))
            ((_ to_fp 11 53) #x3d19000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!564) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!566) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!566))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!564))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!566))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!566))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!564)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe999999999999a)
                          (fp.abs ((_ to_fp 11 53) c_ack!565))))))
  (not a!1)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!565) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!565))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!564)
                                  ((_ to_fp 11 53) a_ack!566)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!564)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe999999999999a)
                          (fp.abs ((_ to_fp 11 53) c_ack!565))))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!565) ((_ to_fp 11 53) #xc03e000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!565) ((_ to_fp 11 53) #x4059000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!565) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!565) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!564) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!566) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!565)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!566)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!564)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.gt (fp.abs a!1) ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!565)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!566)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!564)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.abs (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x7ee4f8b588e368f0))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!565)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!566)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!564)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!565)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!566)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!564)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.abs (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   a!2)))
  (not (fp.gt a!3 ((_ to_fp 11 53) #x3c90000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!565)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!566)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!564)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))))
      (a!4 (fp.abs (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           a!2)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (FPCHECK_FADD_ACCURACY
    a!3
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3cd0000000000000) a!4))))))

(check-sat)
(exit)
