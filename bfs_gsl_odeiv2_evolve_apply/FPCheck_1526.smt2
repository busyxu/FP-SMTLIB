(declare-fun t_ack!7521 () (_ BitVec 64))
(declare-fun t1_ack!7522 () (_ BitVec 64))
(declare-fun h_ack!7524 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y1_ack!7523 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7522)
                    ((_ to_fp 11 53) t_ack!7521))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7522)
                    ((_ to_fp 11 53) t_ack!7521))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!7522)
                ((_ to_fp 11 53) t_ack!7521))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7524)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7522)
                    ((_ to_fp 11 53) t_ack!7521)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7522)
                    ((_ to_fp 11 53) t_ack!7521))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fac71c71c71c71c)
          ((_ to_fp 11 53) h_ack!7524))
  y1_ack!7523))

(check-sat)
(exit)
