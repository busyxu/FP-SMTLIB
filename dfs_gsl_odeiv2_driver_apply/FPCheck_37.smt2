(declare-fun t_ack!203 () (_ BitVec 64))
(declare-fun t1_ack!201 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y1_ack!202 () (_ BitVec 64))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!201)
                                  ((_ to_fp 11 53) t_ack!203)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!201)
                       ((_ to_fp 11 53) t_ack!203)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!201)
                       ((_ to_fp 11 53) t_ack!203))
               ((_ to_fp 11 53) t_ack!203))
       ((_ to_fp 11 53) t1_ack!201)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!201)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!201)
                       ((_ to_fp 11 53) t_ack!203)))
       ((_ to_fp 11 53) t_ack!203)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!201)
                    ((_ to_fp 11 53) t_ack!203))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!201)
               ((_ to_fp 11 53) t_ack!203))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!201)
                ((_ to_fp 11 53) t_ack!203))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) #x3eb0c6f7a0b5ed8d)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!201)
               ((_ to_fp 11 53) t_ack!203))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!201)
                                   ((_ to_fp 11 53) t_ack!203)))
                   ((_ to_fp 11 53) #x3fac71c71c71c71c))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) t1_ack!201)
                 ((_ to_fp 11 53) t_ack!203)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!201)
                                  ((_ to_fp 11 53) t_ack!203)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!201)
                                   ((_ to_fp 11 53) t_ack!203)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!201)
                           ((_ to_fp 11 53) t_ack!203)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3fac71c71c71c71c))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fac71c71c71c71c)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) t1_ack!201)
                  ((_ to_fp 11 53) t_ack!203)))
  y1_ack!202))

(check-sat)
(exit)
