(declare-fun t_ack!503 () (_ BitVec 64))
(declare-fun t1_ack!504 () (_ BitVec 64))
(declare-fun h_ack!507 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y1_ack!506 () (_ BitVec 64))
(declare-fun y0_ack!505 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!504)
                    ((_ to_fp 11 53) t_ack!503))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!504)
               ((_ to_fp 11 53) t_ack!503))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!507) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!504)
                ((_ to_fp 11 53) t_ack!503))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!507)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!504)
               ((_ to_fp 11 53) t_ack!503))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!504)
                                   ((_ to_fp 11 53) t_ack!503)))
                   ((_ to_fp 11 53) y1_ack!506))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!505) a!1)
            (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!505) a!1))
    #x3ff0000000000000)))

(check-sat)
(exit)
