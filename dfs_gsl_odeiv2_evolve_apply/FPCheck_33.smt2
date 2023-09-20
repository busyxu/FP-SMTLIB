(declare-fun t_ack!250 () (_ BitVec 64))
(declare-fun t1_ack!251 () (_ BitVec 64))
(declare-fun h_ack!254 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!253 () (_ BitVec 64))
(declare-fun y0_ack!252 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!251)
                    ((_ to_fp 11 53) t_ack!250))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!251)
               ((_ to_fp 11 53) t_ack!250))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!254) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!251)
                ((_ to_fp 11 53) t_ack!250))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!254)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!251)
               ((_ to_fp 11 53) t_ack!250))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!251)
                                   ((_ to_fp 11 53) t_ack!250)))
                   ((_ to_fp 11 53) y1_ack!253))))
  (FPCHECK_FADD_OVERFLOW y0_ack!252 a!1)))

(check-sat)
(exit)
