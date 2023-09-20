(declare-fun b_ack!244 () (_ BitVec 64))
(declare-fun x_ack!245 () (_ BitVec 64))
(declare-fun a_ack!243 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!245)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!244)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!245) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!245)
                    ((_ to_fp 11 53) b_ack!244))
            ((_ to_fp 11 53) a_ack!243))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!243) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!245)
                    ((_ to_fp 11 53) b_ack!244))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!245)
                    ((_ to_fp 11 53) b_ack!244))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!245)
               ((_ to_fp 11 53) b_ack!244))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!243) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!245)
               ((_ to_fp 11 53) b_ack!244))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!243))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!245)
                           ((_ to_fp 11 53) b_ack!244))
                   ((_ to_fp 11 53) a_ack!243))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven (CF_log a!1) a!1)
                 a!1)
         (CF_log a!1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!245)
                           ((_ to_fp 11 53) b_ack!244))
                   ((_ to_fp 11 53) a_ack!243))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (CF_log a!1)
                 (fp.sub roundNearestTiesToEven (CF_log a!1) a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!245)
                           ((_ to_fp 11 53) b_ack!244))
                   ((_ to_fp 11 53) a_ack!243))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs (CF_log a!1))
                           (fp.abs a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           (fp.abs (CF_log a!1))
                           (fp.abs a!1)))))
  (fp.eq a!3 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!245)
                           ((_ to_fp 11 53) b_ack!244))
                   ((_ to_fp 11 53) a_ack!243))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs (CF_log a!1))
                           (fp.abs a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x3ff0000000000000))
         (fp.add roundNearestTiesToEven (fp.abs (CF_log a!1)) (fp.abs a!1))))))

(check-sat)
(exit)
