(declare-fun b_ack!1166 () (_ BitVec 64))
(declare-fun a_ack!1167 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1166) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1166) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1167) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1166) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1167) ((_ to_fp 11 53) #x408f400000000000)))
(assert (let ((a!1 (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1166)
                                   ((_ to_fp 11 53) b_ack!1166)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1166)
                       ((_ to_fp 11 53) b_ack!1166)))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe0000000000000)
                       ((_ to_fp 11 53) a_ack!1167)))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1167))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1167))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1166)
                                   ((_ to_fp 11 53) b_ack!1166))))))
  (fp.geq a!2 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1167))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1167))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1166)
                                   ((_ to_fp 11 53) b_ack!1166))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (not (fp.gt (fp.abs a!3) ((_ to_fp 11 53) #x3cb0000000000000)))))))
(assert (let ((a!1 (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1166)
                                   ((_ to_fp 11 53) b_ack!1166)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1166)
                       ((_ to_fp 11 53) b_ack!1166)))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe0000000000000)
                       ((_ to_fp 11 53) a_ack!1167)))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1167))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1167))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1166)
                                   ((_ to_fp 11 53) b_ack!1166))))))
  (fp.geq a!2 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1167))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1167))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1166)
                                   ((_ to_fp 11 53) b_ack!1166))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!2)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1167))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1167))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1166)
                                   ((_ to_fp 11 53) b_ack!1166))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!2)
                 a!2)
         ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1167))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1167))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1166)
                                   ((_ to_fp 11 53) b_ack!1166))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (not (fp.gt (fp.abs a!3) ((_ to_fp 11 53) #x3cb0000000000000)))))))
(assert (FPCHECK_FADD_ACCURACY
  #x3fe2000000000000
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #xbfe0000000000000)
                  ((_ to_fp 11 53) a_ack!1167))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #xbfe0000000000000)
                  ((_ to_fp 11 53) a_ack!1167)))))

(check-sat)
(exit)
