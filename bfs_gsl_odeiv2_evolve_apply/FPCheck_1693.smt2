(declare-fun t_ack!9122 () (_ BitVec 64))
(declare-fun t1_ack!9123 () (_ BitVec 64))
(declare-fun h_ack!9126 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!9124 () (_ BitVec 64))
(declare-fun y1_ack!9125 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9123)
                    ((_ to_fp 11 53) t_ack!9122))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9123)
                    ((_ to_fp 11 53) t_ack!9122))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!9123)
                ((_ to_fp 11 53) t_ack!9122))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!9126)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9123)
                    ((_ to_fp 11 53) t_ack!9122)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9123)
                    ((_ to_fp 11 53) t_ack!9122))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!9125))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!9124)
                                   ((_ to_fp 11 53) y0_ack!9124))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_OVERFLOW
    #x3fd4000000000000
    (fp.sub roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) y0_ack!9124))
            a!1))))

(check-sat)
(exit)
