(declare-fun a_ack!576 () (_ BitVec 64))
(declare-fun b_ack!575 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!576) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!575) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!575) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!575) ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!576) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!575)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!576))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!575)
                                   ((_ to_fp 11 53) a_ack!576)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!575)
                           ((_ to_fp 11 53) a_ack!576)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!1
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!575)
                         ((_ to_fp 11 53) a_ack!576)))
         (CF_log (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!575)
                         ((_ to_fp 11 53) a_ack!576))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!575)
                                   ((_ to_fp 11 53) a_ack!576)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!575)
                           ((_ to_fp 11 53) a_ack!576)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!575)
                                   ((_ to_fp 11 53) a_ack!576)))
                   a!1)))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!575)
                 ((_ to_fp 11 53) a_ack!576))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!575)
                                   ((_ to_fp 11 53) a_ack!576))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!575)
                                   ((_ to_fp 11 53) a_ack!576))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 a!2)
         ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.abs (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!575)
                                   ((_ to_fp 11 53) a_ack!576))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!575)
                                   ((_ to_fp 11 53) a_ack!576))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!2))))

(check-sat)
(exit)
