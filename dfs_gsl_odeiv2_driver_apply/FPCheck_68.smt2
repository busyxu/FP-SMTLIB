(declare-fun t_ack!434 () (_ BitVec 64))
(declare-fun t1_ack!431 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y1_ack!433 () (_ BitVec 64))
(declare-fun y0_ack!432 () (_ BitVec 64))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!431)
                                  ((_ to_fp 11 53) t_ack!434)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!431)
                       ((_ to_fp 11 53) t_ack!434)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!431)
                       ((_ to_fp 11 53) t_ack!434))
               ((_ to_fp 11 53) t_ack!434))
       ((_ to_fp 11 53) t1_ack!431)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!431)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!431)
                       ((_ to_fp 11 53) t_ack!434)))
       ((_ to_fp 11 53) t_ack!434)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!431)
                    ((_ to_fp 11 53) t_ack!434))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!431)
               ((_ to_fp 11 53) t_ack!434))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!431)
                ((_ to_fp 11 53) t_ack!434))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) #x3eb0c6f7a0b5ed8d)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!431)
               ((_ to_fp 11 53) t_ack!434))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!431)
                                   ((_ to_fp 11 53) t_ack!434)))
                   ((_ to_fp 11 53) #x3fac71c71c71c71c))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) t1_ack!431)
                 ((_ to_fp 11 53) t_ack!434)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!431)
                                  ((_ to_fp 11 53) t_ack!434)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!431)
                                   ((_ to_fp 11 53) t_ack!434)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!431)
                           ((_ to_fp 11 53) t_ack!434)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3fac71c71c71c71c))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!431)
                                   ((_ to_fp 11 53) t_ack!434)))
                   ((_ to_fp 11 53) y1_ack!433))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!432) a!1)
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!432) a!1))
    #x3ff0000000000000)))

(check-sat)
(exit)
