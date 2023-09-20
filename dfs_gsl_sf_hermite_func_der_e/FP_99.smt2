(declare-fun a_ack!2580 () (_ BitVec 32))
(declare-fun b_ack!2578 () (_ BitVec 32))
(declare-fun c_ack!2579 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!2580 #x00000000)))
(assert (not (bvslt b_ack!2578 #x00000000)))
(assert (not (= #x00000000 a_ack!2580)))
(assert (= #x00000001 a_ack!2580))
(assert (bvsle #x00000002 b_ack!2578))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!2579))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2579))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
  (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!2579))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2579))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
(let ((a!2 (CF_log (fp.abs (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))))
  (fp.geq a!2 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (bvsle #x00000003 b_ack!2578)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfe0000000000000)
                                  ((_ to_fp 11 53) c_ack!2579)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!2579))
                           ((_ to_fp 11 53) c_ack!2579))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) c_ack!2579)))))
  (fp.eq a!1 ((_ to_fp 11 53) c_ack!2579))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2579))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!2579))
                           ((_ to_fp 11 53) c_ack!2579))
                   ((_ to_fp 11 53) c_ack!2579))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfe0000000000000)
                 ((_ to_fp 11 53) c_ack!2579)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) c_ack!2579))
                   ((_ to_fp 11 53) c_ack!2579)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!2579))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2579))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
(let ((a!3 (CF_log (fp.abs (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))))
(let ((a!4 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       a!3
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   a!1)))
  (fp.eq a!5
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x0000000000000000)
                 a!4)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) c_ack!2579))
                   ((_ to_fp 11 53) c_ack!2579)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!2579))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2579))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
(let ((a!3 (CF_log (fp.abs (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))))
(let ((a!4 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       a!3
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           a!4))))
  (fp.eq a!5 a!1))))))

(check-sat)
(exit)
