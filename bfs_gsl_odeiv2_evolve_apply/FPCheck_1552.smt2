(declare-fun t_ack!7747 () (_ BitVec 64))
(declare-fun t1_ack!7748 () (_ BitVec 64))
(declare-fun h_ack!7751 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!7750 () (_ BitVec 64))
(declare-fun y0_ack!7749 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7748)
                    ((_ to_fp 11 53) t_ack!7747))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7748)
                    ((_ to_fp 11 53) t_ack!7747))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!7748)
                ((_ to_fp 11 53) t_ack!7747))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7751)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7748)
                    ((_ to_fp 11 53) t_ack!7747)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7748)
                    ((_ to_fp 11 53) t_ack!7747))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!7749)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!7751))
                           ((_ to_fp 11 53) y1_ack!7750)))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!1)))

(check-sat)
(exit)
