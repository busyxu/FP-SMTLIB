(declare-fun t_ack!213 () (_ BitVec 64))
(declare-fun t1_ack!214 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!216 () (_ BitVec 64))
(declare-fun h_ack!217 () (_ BitVec 64))
(declare-fun y0_ack!215 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!214)
                    ((_ to_fp 11 53) t_ack!213))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!214)
                    ((_ to_fp 11 53) t_ack!213))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!214)
                     ((_ to_fp 11 53) t_ack!213))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!214)
                    ((_ to_fp 11 53) t_ack!213))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!215)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!217))
                           ((_ to_fp 11 53) y1_ack!216)))))
  (FPCHECK_FSUB_OVERFLOW #x8000000000000000 a!1)))

(check-sat)
(exit)
