(declare-fun t_ack!858 () (_ BitVec 64))
(declare-fun t1_ack!855 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!856 () (_ BitVec 64))
(declare-fun y1_ack!857 () (_ BitVec 64))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!855)
                                  ((_ to_fp 11 53) t_ack!858)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!855)
                       ((_ to_fp 11 53) t_ack!858)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!855)
                       ((_ to_fp 11 53) t_ack!858))
               ((_ to_fp 11 53) t_ack!858))
       ((_ to_fp 11 53) t1_ack!855)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!855)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!855)
                       ((_ to_fp 11 53) t_ack!858)))
       ((_ to_fp 11 53) t_ack!858)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!855)
                    ((_ to_fp 11 53) t_ack!858))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!855)
               ((_ to_fp 11 53) t_ack!858))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!855)
                ((_ to_fp 11 53) t_ack!858))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) #x3eb0c6f7a0b5ed8d)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!855)
               ((_ to_fp 11 53) t_ack!858))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!855)
                                   ((_ to_fp 11 53) t_ack!858)))
                   ((_ to_fp 11 53) #x3fac71c71c71c71c))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) t1_ack!855)
                 ((_ to_fp 11 53) t_ack!858)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!855)
                                  ((_ to_fp 11 53) t_ack!858)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!855)
                                   ((_ to_fp 11 53) t_ack!858)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!855)
                           ((_ to_fp 11 53) t_ack!858)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3fac71c71c71c71c))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!857))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!856)
                                   ((_ to_fp 11 53) y0_ack!856))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!855)
                                   ((_ to_fp 11 53) t_ack!858)))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!856))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95555555555555)
                           ((_ to_fp 11 53) y1_ack!857))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!857)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!856)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!855)
                                   ((_ to_fp 11 53) t_ack!858))
                           a!3))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven a!4 a!4)
    #x3ff0000000000000))))))

(check-sat)
(exit)
