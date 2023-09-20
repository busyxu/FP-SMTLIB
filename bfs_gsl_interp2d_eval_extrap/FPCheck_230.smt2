(declare-fun x1_ack!2401 () (_ BitVec 64))
(declare-fun x0_ack!2405 () (_ BitVec 64))
(declare-fun y0_ack!2402 () (_ BitVec 64))
(declare-fun x_ack!2403 () (_ BitVec 64))
(declare-fun y_ack!2404 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2405) ((_ to_fp 11 53) x1_ack!2401))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2402) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2403) ((_ to_fp 11 53) x0_ack!2405))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2403) ((_ to_fp 11 53) x1_ack!2401))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2404) ((_ to_fp 11 53) y0_ack!2402)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2401)
                       ((_ to_fp 11 53) x0_ack!2405))
               ((_ to_fp 11 53) x0_ack!2405))
       ((_ to_fp 11 53) x1_ack!2401)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2401)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2401)
                       ((_ to_fp 11 53) x0_ack!2405)))
       ((_ to_fp 11 53) x0_ack!2405)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2402))
               ((_ to_fp 11 53) y0_ack!2402))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2402)))
       ((_ to_fp 11 53) y0_ack!2402)))
(assert (FPCHECK_FSUB_ACCURACY y_ack!2404 y0_ack!2402))

(check-sat)
(exit)
