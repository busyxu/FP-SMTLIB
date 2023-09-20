(declare-fun t_ack!9767 () (_ BitVec 64))
(declare-fun t1_ack!9768 () (_ BitVec 64))
(declare-fun h_ack!9771 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!9769 () (_ BitVec 64))
(declare-fun y1_ack!9770 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9768)
                    ((_ to_fp 11 53) t_ack!9767))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9768)
                    ((_ to_fp 11 53) t_ack!9767))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!9768)
                ((_ to_fp 11 53) t_ack!9767))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!9771)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9768)
                    ((_ to_fp 11 53) t_ack!9767)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9768)
                    ((_ to_fp 11 53) t_ack!9767))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!9770))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!9769)
                                   ((_ to_fp 11 53) y0_ack!9769))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_OVERFLOW
    #x3fa3333333333333
    (fp.sub roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) y0_ack!9769))
            a!1))))

(check-sat)
(exit)
