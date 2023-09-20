(declare-fun x1_ack!2316 () (_ BitVec 64))
(declare-fun x0_ack!2320 () (_ BitVec 64))
(declare-fun y0_ack!2317 () (_ BitVec 64))
(declare-fun x_ack!2318 () (_ BitVec 64))
(declare-fun y_ack!2319 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2320) ((_ to_fp 11 53) x1_ack!2316))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2317) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2318) ((_ to_fp 11 53) x0_ack!2320))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2318) ((_ to_fp 11 53) x1_ack!2316))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2319) ((_ to_fp 11 53) y0_ack!2317)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2316)
                       ((_ to_fp 11 53) x0_ack!2320))
               ((_ to_fp 11 53) x0_ack!2320))
       ((_ to_fp 11 53) x1_ack!2316)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2316)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2316)
                       ((_ to_fp 11 53) x0_ack!2320)))
       ((_ to_fp 11 53) x0_ack!2320)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2317))
               ((_ to_fp 11 53) y0_ack!2317))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2317)))
       ((_ to_fp 11 53) y0_ack!2317)))
(assert (FPCHECK_FSUB_ACCURACY x_ack!2318 x0_ack!2320))

(check-sat)
(exit)
