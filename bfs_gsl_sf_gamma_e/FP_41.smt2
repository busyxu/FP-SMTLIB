(declare-fun a_ack!362 () (_ BitVec 64))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.lt ((_ to_fp 11 53) a_ack!362) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!362)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand a!1 #x00000001))
                  #x3ff0000000000000
                  #xbff0000000000000)))
      (a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!362)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))))
  (not (fp.eq (fp.div roundNearestTiesToEven
                      (fp.mul roundNearestTiesToEven a!2 a!3)
                      ((_ to_fp 11 53) #x400921fb54442d18))
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!362) ((_ to_fp 11 53) #xc065200000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) a_ack!362))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!362)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand a!1 #x00000001))
                  #x3ff0000000000000
                  #xbff0000000000000)))
      (a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!362)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))))
(let ((a!4 (fp.abs (fp.abs (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!3)
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
  (not (fp.eq a!4 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!362)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand a!1 #x00000001))
                  #x3ff0000000000000
                  #xbff0000000000000)))
      (a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!362)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!3)
                                   ((_ to_fp 11 53) #x400921fb54442d18)))
                   ((_ to_fp 11 53) #x3ffc5bf891b4ef6b))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.abs (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!3)
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
  (fp.eq a!5 ((_ to_fp 11 53) #x3ffc5bf891b4ef6b)))))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!362)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand a!1 #x00000001))
                  #x3ff0000000000000
                  #xbff0000000000000)))
      (a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!362)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!3)
                                   ((_ to_fp 11 53) #x400921fb54442d18)))
                   ((_ to_fp 11 53) #x3ffc5bf891b4ef6b))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!4
                 ((_ to_fp 11 53) #x3ffc5bf891b4ef6b))
         (fp.abs (fp.div roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!2 a!3)
                         ((_ to_fp 11 53) #x400921fb54442d18))))))))

(check-sat)
(exit)
