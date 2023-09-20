(declare-fun x1_ack!2381 () (_ BitVec 64))
(declare-fun x0_ack!2385 () (_ BitVec 64))
(declare-fun y0_ack!2382 () (_ BitVec 64))
(declare-fun x_ack!2383 () (_ BitVec 64))
(declare-fun y_ack!2384 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2385) ((_ to_fp 11 53) x1_ack!2381))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2382) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2383) ((_ to_fp 11 53) x0_ack!2385))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2383) ((_ to_fp 11 53) x1_ack!2381))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2384) ((_ to_fp 11 53) y0_ack!2382)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2381)
                       ((_ to_fp 11 53) x0_ack!2385))
               ((_ to_fp 11 53) x0_ack!2385))
       ((_ to_fp 11 53) x1_ack!2381)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2381)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2381)
                       ((_ to_fp 11 53) x0_ack!2385)))
       ((_ to_fp 11 53) x0_ack!2385)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2382))
               ((_ to_fp 11 53) y0_ack!2382))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2382)))
       ((_ to_fp 11 53) y0_ack!2382)))
(assert (FPCHECK_FSUB_OVERFLOW y_ack!2384 y0_ack!2382))

(check-sat)
(exit)
