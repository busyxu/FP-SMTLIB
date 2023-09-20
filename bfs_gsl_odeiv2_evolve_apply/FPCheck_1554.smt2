(declare-fun t_ack!7767 () (_ BitVec 64))
(declare-fun t1_ack!7768 () (_ BitVec 64))
(declare-fun h_ack!7771 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!7770 () (_ BitVec 64))
(declare-fun y0_ack!7769 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7768)
                    ((_ to_fp 11 53) t_ack!7767))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7768)
                    ((_ to_fp 11 53) t_ack!7767))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!7768)
                ((_ to_fp 11 53) t_ack!7767))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7771)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7768)
                    ((_ to_fp 11 53) t_ack!7767)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7768)
                    ((_ to_fp 11 53) t_ack!7767))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!7769)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!7771))
                           ((_ to_fp 11 53) y1_ack!7770)))))
  (FPCHECK_FMUL_ACCURACY a!1 a!1)))

(check-sat)
(exit)
