(declare-fun x1_ack!4401 () (_ BitVec 64))
(declare-fun x0_ack!4405 () (_ BitVec 64))
(declare-fun y0_ack!4402 () (_ BitVec 64))
(declare-fun x_ack!4403 () (_ BitVec 64))
(declare-fun y_ack!4404 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4405) ((_ to_fp 11 53) x1_ack!4401))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4402) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4403) ((_ to_fp 11 53) x0_ack!4405))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!4403) ((_ to_fp 11 53) x1_ack!4401)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4404) ((_ to_fp 11 53) y0_ack!4402)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4401)
                       ((_ to_fp 11 53) x0_ack!4405))
               ((_ to_fp 11 53) x0_ack!4405))
       ((_ to_fp 11 53) x1_ack!4401)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4401)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4401)
                       ((_ to_fp 11 53) x0_ack!4405)))
       ((_ to_fp 11 53) x0_ack!4405)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4402))
               ((_ to_fp 11 53) y0_ack!4402))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4402)))
       ((_ to_fp 11 53) y0_ack!4402)))
(assert (FPCHECK_FSUB_ACCURACY x_ack!4403 x0_ack!4405))

(check-sat)
(exit)
