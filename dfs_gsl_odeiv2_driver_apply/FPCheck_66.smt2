(declare-fun t_ack!418 () (_ BitVec 64))
(declare-fun t1_ack!415 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y1_ack!417 () (_ BitVec 64))
(declare-fun y0_ack!416 () (_ BitVec 64))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!415)
                                  ((_ to_fp 11 53) t_ack!418)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!415)
                       ((_ to_fp 11 53) t_ack!418)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!415)
                       ((_ to_fp 11 53) t_ack!418))
               ((_ to_fp 11 53) t_ack!418))
       ((_ to_fp 11 53) t1_ack!415)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!415)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!415)
                       ((_ to_fp 11 53) t_ack!418)))
       ((_ to_fp 11 53) t_ack!418)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!415)
                    ((_ to_fp 11 53) t_ack!418))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!415)
               ((_ to_fp 11 53) t_ack!418))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!415)
                ((_ to_fp 11 53) t_ack!418))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) #x3eb0c6f7a0b5ed8d)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!415)
               ((_ to_fp 11 53) t_ack!418))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!415)
                                   ((_ to_fp 11 53) t_ack!418)))
                   ((_ to_fp 11 53) #x3fac71c71c71c71c))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) t1_ack!415)
                 ((_ to_fp 11 53) t_ack!418)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!415)
                                  ((_ to_fp 11 53) t_ack!418)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!415)
                                   ((_ to_fp 11 53) t_ack!418)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!415)
                           ((_ to_fp 11 53) t_ack!418)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3fac71c71c71c71c))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!415)
                                   ((_ to_fp 11 53) t_ack!418)))
                   ((_ to_fp 11 53) y1_ack!417))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!416) a!1)
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!416) a!1))
    #x3ff0000000000000)))

(check-sat)
(exit)
