(declare-fun t_ack!7780 () (_ BitVec 64))
(declare-fun t1_ack!7781 () (_ BitVec 64))
(declare-fun h_ack!7784 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y1_ack!7783 () (_ BitVec 64))
(declare-fun y0_ack!7782 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7781)
                    ((_ to_fp 11 53) t_ack!7780))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7781)
                    ((_ to_fp 11 53) t_ack!7780))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!7781)
                ((_ to_fp 11 53) t_ack!7780))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7784)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7781)
                    ((_ to_fp 11 53) t_ack!7780)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7781)
                    ((_ to_fp 11 53) t_ack!7780))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!7782)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!7784))
                           ((_ to_fp 11 53) y1_ack!7783)))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven a!1 a!1)
    #x3ff0000000000000)))

(check-sat)
(exit)
