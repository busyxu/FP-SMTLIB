(declare-fun c_ack!564 () (_ BitVec 64))
(declare-fun d_ack!565 () (_ BitVec 64))
(declare-fun a_ack!566 () (_ BitVec 64))
(declare-fun b_ack!563 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!564) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) d_ack!565))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!564) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!565))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!566))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!563))
            ((_ to_fp 11 53) #x4034000000000000))))
(assert (fp.gt ((_ to_fp 11 53) c_ack!564) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) d_ack!565) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!566))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!563))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!565) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) d_ack!565)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!565))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!565)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!565)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 ((_ to_fp 11 53) d_ack!565)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) d_ack!565)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!565))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!565)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!565)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 ((_ to_fp 11 53) d_ack!565)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!563))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!563)
                       ((_ to_fp 11 53) b_ack!563))
               ((_ to_fp 11 53) b_ack!563))
       ((_ to_fp 11 53) b_ack!563)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!563))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!563)
                       ((_ to_fp 11 53) b_ack!563))
               ((_ to_fp 11 53) b_ack!563))
       ((_ to_fp 11 53) b_ack!563)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!566)
                                   ((_ to_fp 11 53) a_ack!566))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!563)
                                   ((_ to_fp 11 53) b_ack!563)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!566)
                           ((_ to_fp 11 53) a_ack!566)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!563)
                 ((_ to_fp 11 53) b_ack!563)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!566)
                                   ((_ to_fp 11 53) a_ack!566))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!563)
                                   ((_ to_fp 11 53) b_ack!563)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!563)
                           ((_ to_fp 11 53) b_ack!563)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!566)
                 ((_ to_fp 11 53) a_ack!566)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!566)
                           ((_ to_fp 11 53) a_ack!566))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!563)
                           ((_ to_fp 11 53) b_ack!563)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!566)))
                   a!1)))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 ((_ to_fp 11 53) a_ack!566))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!566)
                           ((_ to_fp 11 53) a_ack!566))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!563)
                           ((_ to_fp 11 53) b_ack!563)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!566)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) a_ack!566)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!566)
                                   ((_ to_fp 11 53) a_ack!566))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!563)
                                   ((_ to_fp 11 53) b_ack!563)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) a_ack!566)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!566)
                                   ((_ to_fp 11 53) a_ack!566))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!563)
                                   ((_ to_fp 11 53) b_ack!563)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) a_ack!566)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!564)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) c_ack!564))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!564)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) c_ack!564)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!566)
                                   ((_ to_fp 11 53) a_ack!566))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!563)
                                   ((_ to_fp 11 53) b_ack!563)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) a_ack!566)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!564)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!565)))))
  (FPCHECK_FADD_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
