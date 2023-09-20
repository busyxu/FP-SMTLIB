(declare-fun b_ack!2139 () (_ BitVec 64))
(declare-fun a_ack!2140 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2139) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2140) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2140) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2139) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2140) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!2139))
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) a_ack!2140))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!2140))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2140)
                       ((_ to_fp 11 53) a_ack!2140))
               ((_ to_fp 11 53) a_ack!2140))
       ((_ to_fp 11 53) a_ack!2140)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!2140))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2140)
                       ((_ to_fp 11 53) a_ack!2140))
               ((_ to_fp 11 53) a_ack!2140))
       ((_ to_fp 11 53) a_ack!2140)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2140)
                                   ((_ to_fp 11 53) a_ack!2140))
                           ((_ to_fp 11 53) a_ack!2140)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2140)
                           ((_ to_fp 11 53) a_ack!2140))
                   ((_ to_fp 11 53) a_ack!2140))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2140)
                                   ((_ to_fp 11 53) a_ack!2140))
                           ((_ to_fp 11 53) a_ack!2140)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2140)
                           ((_ to_fp 11 53) a_ack!2140))
                   ((_ to_fp 11 53) a_ack!2140))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2140)
                           ((_ to_fp 11 53) a_ack!2140))
                   ((_ to_fp 11 53) a_ack!2140))))
  (not (fp.eq (fp.abs (fp.mul roundNearestTiesToEven a!1 a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2140)
                           ((_ to_fp 11 53) a_ack!2140))
                   ((_ to_fp 11 53) a_ack!2140))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!1)
                 (fp.mul roundNearestTiesToEven a!1 a!1))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2140)
                                   ((_ to_fp 11 53) a_ack!2140))
                           ((_ to_fp 11 53) a_ack!2140)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2140)
                           ((_ to_fp 11 53) a_ack!2140))
                   ((_ to_fp 11 53) a_ack!2140))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!1)
                 a!1)
         (fp.mul roundNearestTiesToEven a!1 a!1))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2140)
                           ((_ to_fp 11 53) a_ack!2140))
                   ((_ to_fp 11 53) a_ack!2140))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   a!1)
                           ((_ to_fp 11 53) a_ack!2140)))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2140)
                           ((_ to_fp 11 53) a_ack!2140))
                   ((_ to_fp 11 53) a_ack!2140))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           a!1)
                   ((_ to_fp 11 53) a_ack!2140))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) a_ack!2140))
                 a!2)
         ((_ to_fp 11 53) a_ack!2140)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!2140))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2140)
                           ((_ to_fp 11 53) a_ack!2140))
                   ((_ to_fp 11 53) a_ack!2140))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           a!1)
                   ((_ to_fp 11 53) a_ack!2140))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) a_ack!2140))
                 ((_ to_fp 11 53) a_ack!2140))
         a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2139)
                                   ((_ to_fp 11 53) a_ack!2140)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2139)
                           ((_ to_fp 11 53) a_ack!2140)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2139)
                                   ((_ to_fp 11 53) a_ack!2140))))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!2139)
                 ((_ to_fp 11 53) a_ack!2140)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2139)
                                   ((_ to_fp 11 53) a_ack!2140))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2139)
                    ((_ to_fp 11 53) a_ack!2140))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2139)
                                   ((_ to_fp 11 53) a_ack!2140))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2139)
                                   ((_ to_fp 11 53) a_ack!2140))))))
  (FPCHECK_FSUB_OVERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
