(declare-fun a_ack!668 () (_ BitVec 64))
(declare-fun b_ack!667 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!668) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!667) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!667) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!667) ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!668) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!667)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!668))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!667)
                                   ((_ to_fp 11 53) a_ack!668)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!667)
                           ((_ to_fp 11 53) a_ack!668)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!1
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!667)
                         ((_ to_fp 11 53) a_ack!668)))
         (CF_log (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!667)
                         ((_ to_fp 11 53) a_ack!668))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!667)
                                   ((_ to_fp 11 53) a_ack!668)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!667)
                           ((_ to_fp 11 53) a_ack!668)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!667)
                                   ((_ to_fp 11 53) a_ack!668)))
                   a!1)))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!667)
                 ((_ to_fp 11 53) a_ack!668))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!667)
                                   ((_ to_fp 11 53) a_ack!668))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!667)
                                   ((_ to_fp 11 53) a_ack!668))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 a!2)
         ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.abs (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!667)
                                   ((_ to_fp 11 53) a_ack!668))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!667)
                                   ((_ to_fp 11 53) a_ack!668))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!2))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!668) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!668) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!668) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!668) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!668) ((_ to_fp 11 53) #x40c0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!668)
                                   ((_ to_fp 11 53) a_ack!668)))
                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                         a!1)
                 ((_ to_fp 11 53) #x3f7a41a41a41a41a))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!668)
                                   ((_ to_fp 11 53) a_ack!668)))
                   ((_ to_fp 11 53) #xbf9e4286cb0f5398))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3f7a41a41a41a41a)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3f7a41a41a41a41a))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!668)
                           ((_ to_fp 11 53) a_ack!668)))))
  (FPCHECK_FMUL_ACCURACY
    a!1
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x3f7a41a41a41a41a)
            (fp.mul roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #xbf9e4286cb0f5398))))))

(check-sat)
(exit)
