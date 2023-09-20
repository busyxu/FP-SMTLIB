(declare-fun x_ack!1619 () (_ BitVec 64))
(declare-fun mu_ack!1618 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1619) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1619) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) mu_ack!1618) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) mu_ack!1618) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1619) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          ((_ to_fp 11 53) x_ack!1619))
                  (CF_pow #x3fa999999999999a
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) mu_ack!1618)
                                  ((_ to_fp 11 53) #x4000000000000000))))))
  (not a!1)))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) mu_ack!1618)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) mu_ack!1618)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) mu_ack!1618)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) mu_ack!1618)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) mu_ack!1618)
                ((_ to_fp 11 53) #x4000000000000000))
        ((_ to_fp 11 53) #x4065600000000000)))
(assert (let ((a!1 (fp.eq (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) mu_ack!1618)
                          ((_ to_fp 11 53) #x4000000000000000))
                  (CF_floor (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) mu_ack!1618)
                                    ((_ to_fp 11 53) #x4000000000000000))))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) mu_ack!1618)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) mu_ack!1618)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) mu_ack!1618)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) mu_ack!1618)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) mu_ack!1618)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) mu_ack!1618)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) mu_ack!1618)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbf9e4286cb0f5398)))
                   ((_ to_fp 11 53) #x3f7a41a41a41a41a))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xbf9e4286cb0f5398))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) mu_ack!1618)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) mu_ack!1618)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbf9e4286cb0f5398)))
                   (fp.mul roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xbf9e4286cb0f5398)))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3f7a41a41a41a41a)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) mu_ack!1618)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) mu_ack!1618)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)
                         a!2)
                 ((_ to_fp 11 53) #xbf5f6ab0d9993c7d))
         a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) mu_ack!1618)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) mu_ack!1618)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)
                         a!2)
                 a!2)
         ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) mu_ack!1618)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) mu_ack!1618)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))))
  (FPCHECK_FADD_UNDERFLOW
    #x3f4b951e2b18ff23
    (fp.mul roundNearestTiesToEven
            a!1
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf5f6ab0d9993c7d)
                    a!2))))))

(check-sat)
(exit)
